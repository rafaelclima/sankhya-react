#!/bin/bash

# Atualiza todas as dependências para as últimas versões
npm update

# Atualiza as dependências de desenvolvimento
npm update --save-dev

# Executa o npm audit fix para corrigir vulnerabilidades
# npm audit fix

# Atualiza o package-lock.json
npm install

# Executa os testes (se houver)
# npm test

# Faz o build do projeto para garantir que tudo está funcionando
# npm run build

echo "Projeto base atualizado com sucesso!"
echo "Por favor, revise as mudanças e faça commit se estiver satisfeito."