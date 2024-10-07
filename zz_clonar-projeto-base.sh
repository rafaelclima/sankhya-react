#!/bin/bash

# Verifica se o nome do novo projeto foi fornecido
if [ $# -eq 0 ]; then
    echo "Por favor, forneça um nome para o novo projeto."
    echo "Uso: ./clone-project.sh <nome-do-novo-projeto>"
    exit 1
fi

NEW_PROJECT_NAME=$1
BASE_PROJECT="projeto-react-sankhya"
CURRENT_DIR=$(pwd)

# Verifica se o diretório do projeto base existe
if [ ! -d "$CURRENT_DIR" ]; then
    echo "Erro: O diretório do projeto base não foi encontrado."
    exit 1
fi

# Pergunta ao usuário se deseja usar TypeScript
echo "Você deseja usar TypeScript neste projeto? (y/n)"
read use_typescript

# Remove node_modules e arquivos de build do projeto base
echo "Removendo node_modules e arquivos de build do projeto base..."
rm -rf node_modules dist

# Cria uma cópia do projeto base
echo "Criando novo projeto '$NEW_PROJECT_NAME'..."
mkdir -p "../$NEW_PROJECT_NAME"
rsync -av --progress "$CURRENT_DIR/" "../$NEW_PROJECT_NAME" \
    --exclude zz_clonar-projeto-base.sh \
    --exclude zz_update-base-projeto.sh \
    --exclude node_modules \
    --exclude dist \
    --exclude jsconfig.json \
    --exclude tsconfig.json \
    --exclude src/custom.d.ts \

# Verifica se a cópia foi bem-sucedida
if [ $? -ne 0 ]; then
    echo "Erro: Falha ao copiar o projeto base."
    exit 1
fi

# Entra no diretório do novo projeto
cd "../$NEW_PROJECT_NAME" || exit 1

# Configura o projeto com base na escolha do usuário
if [[ $use_typescript =~ ^[Yy]$ ]]; then
    echo "Configurando o projeto para usar TypeScript..."
    cp "$CURRENT_DIR/tsconfig.json" .
    cp "$CURRENT_DIR/src/custom.d.ts" src/
    # Instala dependências do TypeScript
    npm install --save-dev typescript @types/react @types/react-dom @babel/preset-typescript
    # Renomeia arquivos JS para TS
    find src -name "*.js" -exec sh -c 'mv "$0" "${0%.js}.ts"' {} \;
    find src -name "*.jsx" -exec sh -c 'mv "$0" "${0%.jsx}.tsx"' {} \;
    # Atualiza o entry point para usar index.tsx
    sed -i '' "s/entry: '.\/src\/index.jsx'/entry: '.\/src\/index.tsx'/" webpack.config.js
else
    echo "Configurando o projeto para usar JavaScript..."
    cp "$CURRENT_DIR/jsconfig.json" .
fi

# Cria estrutura de pastas adicional
mkdir -p src/{components/common,pages,routes,contexts,services,controllers,hooks,utils,styles,assets,config,layout}

# Atualiza o nome do projeto no package.json
echo "Atualizando package.json..."
sed -i '' "s/\"name\": \"$BASE_PROJECT\"/\"name\": \"$NEW_PROJECT_NAME\"/" package.json

# Verifica arquivos essenciais
echo "Verificando arquivos essenciais..."
for file in .babelrc .biomeignore webpack.config.js package.json
do
    if [ -f "$file" ]; then
        echo "$file está presente."
    else
        echo "AVISO: $file não foi encontrado. Por favor, verifique e adicione manualmente se necessário."
    fi
done

# Instala as dependências
echo "Instalando dependências..."
npm install

# Inicializa um novo repositório git (opcional)
echo "Você deseja iniciar um novo repositório ("git init")? (y/n)"
read use_git
if [[ $use_git =~ ^[Yy]$ ]]; then
    echo "Inicializando novo repositório git..."
    git init
fi

# Mensagem de conclusão
echo "Novo projeto '$NEW_PROJECT_NAME' criado com sucesso!"
if [[ $use_typescript =~ ^[Yy]$ ]]; then
    echo "O projeto está configurado para usar TypeScript."
else
    echo "O projeto está configurado para usar JavaScript."
fi
echo "Para começar a desenvolver, execute:"
echo "cd ../$NEW_PROJECT_NAME"