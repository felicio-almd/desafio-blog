# Aplicação de Gerenciamento de Blog com Ruby
<h1><a href="https://desafio-blog.onrender.com/">Blog no Ar</a></h1>

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/felicio-almd/desafio-blog?color=56BEB8">

  <img alt="Github language count" src="https://img.shields.io/github/languages/count/felicio-almd/desafio-blog?color=56BEB8">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/felicio-almd/desafio-blog?color=56BEB8">
</p>


## :dart: Visão Geral
Aplicação full-stack desenvolvida com Ruby On Rails para gerenciamento de um blog, com posts, usuários e comentários, utilizando tecnologias modernas de desenvolvimento.

## :sparkles: Features
- Personalização do layout utilizando Tailwind.
- Gem para paginação dos posts.
- Upload de posts em massa com txt
- Comentarios logados e anonimos em cada post
- Validações específicas no CRUD.
- Especificação de níveis de acesso de usuário no backend.
- Utilização do PostgreSQL e Docker para criação da imagem e uso dos volumes.
- Deploy no Render.com.

## Pré-requisitos
- Ruby 3.0 ou superior.
- Rails 7.0 ou superior.
- PostgreSQL.
- Docker (opcional, para ambiente containerizado).
- Node.js (para frontend com Tailwind).

## Configuração de Desenvolvimento

### Instalação de Dependências
```bash
# Instalar dependências do projeto
bundle install
yarn install
````

### Configuração do Banco de Dados
```bash
# Criar e migrar o banco de dados
rails db:create
rails db:migrate
```

### Executar Aplicação
```bash
# Iniciar backend
rails server

# Iniciar frontend (se necessário)
yarn dev
```

### Estrutura do Projeto
```bash
app/controllers: Contém os controladores da aplicação.

app/models: Contém os modelos do banco de dados.

app/views: Contém as views da aplicação.

app/assets: Contém os assets como CSS, JavaScript e imagens.

config: Configurações da aplicação, rotas, banco de dados, etc.

db: Migrações e seeds do banco de dados.

spec: Testes da aplicação.
```

## Comandos Úteis
### Gerenciamento de Dependências
```bash
# Adicionar uma nova gem
bundle add nome_da_gem

# Atualizar dependências
bundle update
```
### Build de Produção
```bash
# Compilar assets para produção
rails assets:precompile
```

## Testes
### Testes backend
```bash
# Executar testes do backend
rspec

# Executar testes do frontend (se aplicável)
yarn test

# Testes E2E
# Executar testes end-to-end (se aplicável)
# Depende da configuração de ferramentas como Cypress ou Selenium
```

## Ferramentas
Ruby on Rails: Framework web utilizado para o backend.

Tailwind CSS: Framework CSS para estilização.

PostgreSQL: Banco de dados relacional.

Docker: Para containerização da aplicação.

Render.com: Plataforma de deploy.

## Documentação
Documentação Ruby

Documentação Rails

Documentação Tailwind

## Fluxo de Trabalho
- Instalar dependências.
- Configurar ambiente.
- Desenvolver funcionalidades.
- Executar testes.
- Abrir localmente a aplicação.
- Fazer deploy.

<h2> Made by <a href="https://github.com/felicio-almd" target="_blank">Felicio</a> </h2>
