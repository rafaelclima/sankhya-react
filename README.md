# 🚀 Projeto Base React para Sankhya-Om

<div data-badges>
  <!-- React Badge -->
  <a href="https://react.dev/" target="_blank" rel="noopener noreferrer" style="text-decoration: none; transition: transform 0.2s;">
    <img src="https://img.shields.io/badge/React-18-blue.svg?logo=react" alt="React 18" style="border-radius: 6px; height: 28px;">
  </a>
  
  <!-- Webpack Badge -->
  <a href="https://webpack.js.org/" target="_blank" rel="noopener noreferrer" style="text-decoration: none; transition: transform 0.2s;">
    <img src="https://img.shields.io/badge/Webpack-5-blue.svg?logo=webpack" alt="Webpack 5" style="border-radius: 6px; height: 28px;">
  </a>
  
  <!-- TailwindCSS Badge -->
  <a href="https://tailwindcss.com/" target="_blank" rel="noopener noreferrer" style="text-decoration: none; transition: transform 0.2s;">
    <img src="https://img.shields.io/badge/TailwindCSS-3-38B2AC.svg?logo=tailwindcss" alt="TailwindCSS 3" style="border-radius: 6px; height: 28px;">
  </a>
  
  <!-- Biome Badge -->
  <a href="https://biomejs.dev/" target="_blank" rel="noopener noreferrer" style="text-decoration: none; transition: transform 0.2s;">
    <img src="https://img.shields.io/badge/Biome-Formatter-green.svg?logo=biome" alt="Biome Formatter" style="border-radius: 6px; height: 28px;">
  </a>
  
  <!-- MIT License Badge -->
  <a href="https://choosealicense.com/licenses/mit/" target="_blank" rel="noopener noreferrer" style="text-decoration: none; transition: transform 0.2s;">
    <img src="https://img.shields.io/badge/license-MIT-green.svg" alt="MIT License" style="border-radius: 6px; height: 28px;">
  </a>
</div>

Este é um projeto base **React** ⚛️ configurado para integração com o **ERP Sankhya-Om**. Ele inclui uma estrutura organizada, configurações para **Webpack**, **Babel**, **Tailwind CSS**, além de scripts para facilitar a clonagem e atualização de projetos. ✨

---

## 📌 Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- ✅ **Node.js** (14.x ou superior)
- ✅ **npm** (geralmente vem com o Node.js)
- ✅ **Git**

Verifique as instalações com:

```bash
node --version
npm --version
git --version
```

---

## 🔧 Clonando o Projeto Base

Para criar um novo projeto baseado neste template:

```bash
# Acesse o diretório do projeto base
cd caminho/para/projeto-base-react-sankhya

# Execute o script de clonagem
./clone-project.sh nome-do-seu-novo-projeto

# Acesse o novo projeto
cd ../nome-do-seu-novo-projeto
```

---

## 📂 Estrutura do Projeto

```plaintext
nome-do-seu-novo-projeto/
├── public/
│   ├── index.html
│   └── favicon.ico
├── src/
│   ├── components/
│   │   └── common/
│   ├── pages/
│   ├── routes/
│   ├── contexts/
│   ├── services/
│   ├── controllers/
│   ├── hooks/
│   ├── utils/
│   ├── styles/
│   ├── assets/
│   ├── config/
│   ├── App.js
│   └── index.js
├── .babelrc
├── .biomeignore
├── .gitignore
├── jsconfig.json
├── package.json
├── postcss.config.js
├── tailwind.config.js
└── webpack.config.js
```

---

## 🚀 Desenvolvimento

Instale as dependências (caso o script de clonagem não tenha feito isso automaticamente):

```bash
npm install
```

Inicie o ambiente de desenvolvimento:

```bash
npm start
```

---

## 📦 Build para Produção

Para gerar a build de produção:

```bash
npm run build
```

Isso criará um arquivo `src.zip` na raiz do projeto, pronto para ser enviado ao **ERP Sankhya-Om**.

---

## 🔄 Atualizando o Projeto Base

Se melhorias foram feitas no projeto base e deseja aplicá-las a projetos existentes:

```bash
# Acesse o diretório do projeto que deseja atualizar
cd caminho/para/seu-projeto

# Execute o script de atualização
./update-base-project.sh
```

📌 **Nota:** Revise as mudanças após a atualização para evitar conflitos ou ajustes manuais.

---

## ⚙️ Configurações Adicionais

### 📌 Aliases para Importação

O projeto suporta **aliases** para facilitar as importações:

```javascript
import Button from '@components/Button';
import HomePage from '@pages/HomePage';
```

### 🎨 Tailwind CSS

O **Tailwind CSS** está configurado e pronto para uso! Basta adicionar as classes nos seus componentes.

---

## 🛠️ Biome.js para Formatação e Linting

Este projeto utiliza **Biome.js** 🌿 como ferramenta de formatação e linting, substituindo **ESLint** e **Prettier**.

### 📋 Comandos úteis

- **Formatar código:**

  ```bash
  npx biome format .
  ```

- **Linting:**

  ```bash
  npx biome lint .
  ```

- **Verificação geral:**

  ```bash
  npx biome check .
  ```

- **Correção automática:**

  ```bash
  npx biome check --apply .
  ```

### 🔌 Integração com VSCode

Para uma experiência melhor, instale a extensão **Biome.js** no VSCode:

🔗 [Extensão Biome.js](https://marketplace.visualstudio.com/items?itemName=biomejs.biome)

⚡ Além disso, configure corretamente seu VSCode seguindo a [documentação oficial](https://biomejs.dev/reference/vscode/).

---

## 🚨 Problemas Comuns

### ❌ Autoimport não funciona no VSCode

1. Verifique se as extensões **Biome.js** e **React** estão instaladas.
2. Reinicie o **servidor TypeScript**:
   - Abra a paleta de comandos (Ctrl+Shift+P ou Cmd+Shift+P)
   - Digite e selecione **"TypeScript: Restart TS server"**

### ❌ Erro ao fazer build

1. Certifique-se de que todas as dependências estão instaladas corretamente.
2. Verifique se há **erros de sintaxe** ou **importações incorretas** no código.
3. Revise a configuração do `webpack.config.js`.

---

## 🤝 Contribuindo

Fique à vontade para contribuir! 💡

- Crie uma **issue** para relatar problemas ou sugerir melhorias.
- Faça um **pull request** com suas contribuições.

---

## 📜 Licença

Este projeto está licenciado sob a **Licença MIT**.

[📜 MIT License](https://choosealicense.com/licenses/mit/)

