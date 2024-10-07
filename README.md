# Projeto Base React para Sankhya-Om

Este é um projeto base React configurado para integração com o ERP Sankhya-Om. Ele inclui uma estrutura de pastas organizada, configurações para Webpack, Babel, e Tailwind CSS, além de scripts para facilitar a clonagem e atualização de projetos.

## Pré-requisitos

Antes de começar, certifique-se de ter instalado em sua máquina:

- Node.js (versão 14.x ou superior)
- npm (geralmente vem com o Node.js)
- Git

Você pode verificar as instalações com os seguintes comandos:

bash
node --version
npm --version
git --version


## Clonando o Projeto Base

Para criar um novo projeto baseado neste template:

1. Navegue até o diretório do projeto base no terminal:
bash
cd caminho/para/projeto-base-react-sankhya

2. Execute o script de clonagem:
bash
./clone-project.sh nome-do-seu-novo-projeto


3. Navegue para o novo projeto:
bash
cd ../nome-do-seu-novo-projeto


## Estrutura do Projeto

Após a clonagem, seu novo projeto terá a seguinte estrutura:
nome-do-seu-novo-projeto/
├── public/
│ ├── index.html
│ └── favicon.ico
├── src/
│ ├── components/
│ │ └── common/
│ ├── pages/
│ ├── routes/
│ ├── contexts/
│ ├── services/
│ ├── controllers/
│ ├── hooks/
│ ├── utils/
│ ├── styles/
│ ├── assets/
│ ├── config/
│ ├── App.js
│ └── index.js
├── .babelrc
├── .biomeignore
├── .gitignore
├── jsconfig.json
├── package.json
├── postcss.config.js
├── tailwind.config.js
└── webpack.config.js


## Desenvolvimento

Para iniciar o desenvolvimento:

1. Instale as dependências (caso o script de clonagem não tenha feito isso):
bash
npm install

## Build para Produção

Para criar uma build de produção:
bash
npm run build

Isso gerará um arquivo `src.zip` na raiz do projeto, que pode ser feito upload para o ERP Sankhya-Om.

## Atualizando o Projeto Base

Se você fez melhorias no projeto base e deseja aplicá-las a projetos existentes:

1. Navegue até o diretório do projeto que deseja atualizar:
bash
cd caminho/para/seu-projeto

2. Execute o script de atualização:
bash
./update-base-project.sh

**Nota:** Certifique-se de revisar as mudanças após a atualização, pois podem haver conflitos ou alterações que precisam ser ajustadas manualmente.

## Configurações Adicionais

### Aliases

O projeto está configurado com aliases para facilitar as importações. Você pode usar, por exemplo:

javascript
import Button from '@components/Button';
import HomePage from '@pages/HomePage';

### Tailwind CSS

O Tailwind CSS está configurado e pronto para uso. Você pode começar a usar as classes utilitárias do Tailwind em seus componentes imediatamente.

## Biome.js para Formatação e Linting

Este projeto utiliza Biome.js como ferramenta de formatação e linting. O Biome.js é uma ferramenta de desenvolvimento all-in-one que substitui ESLint, Prettier, e outras ferramentas similares.

### Configuração

A configuração do Biome.js está definida no arquivo `biome.json` na raiz do projeto. Este arquivo contém as regras e preferências para formatação e linting.

### Uso

Para usar o Biome.js em seu projeto:

1. **Formatação de código:**
   ```bash
   npx biome format .
   ```
   Isso formatará todos os arquivos suportados no projeto.

2. **Linting:**
   ```bash
   npx biome lint .
   ```
   Isso executará o linter em todos os arquivos suportados.

3. **Verificação (formatação + linting):**
   ```bash
   npx biome check .
   ```
   Isso realizará tanto a formatação quanto o linting.

4. **Correção automática:**
   ```bash
   npx biome check --apply .
   ```
   Isso tentará corrigir automaticamente os problemas encontrados.

### Integração com o Editor

Para uma melhor experiência de desenvolvimento, recomenda-se instalar a extensão do Biome.js para seu editor:

- Para VSCode: [Biome Extension](https://marketplace.visualstudio.com/items?itemName=biomejs.biome)

- Além de realizar as devidas alterações no seu arquivo de configuração do VSCode, como explica a doc do Biome: [Doc Biome](https://biomejs.dev/reference/vscode/)

Com a extensão instalada, você terá formatação e linting em tempo real enquanto codifica.

### Scripts NPM

Para facilitar o uso, os seguintes scripts estão disponíveis no `package.json`:

json
{
"scripts": {
"format": "biome format .",
"lint": "biome lint .",
"check": "biome check .",
"check:apply": "biome check --apply ."
}
}

Você pode executá-los com `npm run <script>`, por exemplo:

bash
npm run format

### Customização

Se você precisar ajustar as regras do Biome.js, edite o arquivo `biome.json`. Consulte a [documentação oficial do Biome.js](https://biomejs.dev/reference/configuration/) para mais detalhes sobre as opções de configuração disponíveis.

## Problemas Comuns

### Autoimport não funciona

Se o autoimport não estiver funcionando no VSCode:

1. Certifique-se de ter as extensões Biome e React instaladas.
2. Reinicie o servidor TypeScript: 
   - Abra a paleta de comandos (Ctrl+Shift+P ou Cmd+Shift+P)
   - Digite e selecione "TypeScript: Restart TS server"

### Erro ao fazer build

Se encontrar erros durante o build, verifique:

1. Se todas as dependências estão instaladas corretamente.
2. Se há erros de sintaxe ou importações incorretas no código.
3. Se o webpack.config.js está configurado corretamente.

## Contribuindo

Sinta-se à vontade para contribuir com este projeto base. Por favor, crie uma issue ou um pull request com suas sugestões de melhorias.

## Licença

[MIT](https://choosealicense.com/licenses/mit/)