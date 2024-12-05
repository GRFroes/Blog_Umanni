# Blog com Autenticação no Ruby on Rails

## Descrição
Um blog criado com Ruby on Rails, implementando funcionalidades de autenticação de usuários, postagem de conteúdos e comentários dinâmicos usando Action Cable. Este projeto foi desenvolvido como parte de um processo seletivo.

---

## Instalação

### Requisitos
- Ruby 3.3.6
- Rails 8.x
- Node.js e Yarn (para assets)
- SQLite ou PostgreSQL (dependendo da configuração do ambiente)
- Git (opcional, para versionamento)

### Passos para Instalar
1. Clone este repositório:
   git clone https://github.com/seu-usuario/blog-rails.git
   cd blog-rails

2. Instale as dependências:
bundle install
yarn install

3. Configure o banco de dados:
rails db:setup

4. Inicie o servidor:
rails server

5. Acesse o sistema em http://localhost:3000.

Funcionalidades

Funcionalidades Básicas
Cadastro, login e logout de usuários com Devise.
Listagem de postagens.
Criação, edição e exclusão de postagens.
Comentários dinâmicos utilizando Action Cable para atualização em tempo real.
Restrições de acesso: apenas usuários autenticados podem criar, editar ou excluir posts e comentários.

Melhorias Adicionais
Interface traduzida para português (I18n).
Mensagens de erro amigáveis.
Layout responsivo.

Estrutura do Projeto

Controllers: Gerenciam as ações dos usuários e a lógica de negócios.
Models: Contêm as regras de negócio e interação com o banco de dados.
Views: Apresentam as informações ao usuário.
Channels: Usados pelo Action Cable para atualização em tempo real.

Rotas

Principais rotas
GET    /posts             -> Listar posts
POST   /posts             -> Criar um novo post
GET    /posts/:id         -> Mostrar detalhes de um post
PATCH  /posts/:id         -> Atualizar um post
DELETE /posts/:id         -> Excluir um post

POST   /posts/:post_id/comments -> Criar comentário
DELETE /posts/:post_id/comments/:id -> Excluir comentário

GET    /users/sign_in     -> Login
GET    /users/sign_up     -> Registro
DELETE /users/sign_out    -> Logout
Use rails routes para mais detalhes.

Testes
Execute os testes (caso implementados) com o seguinte comando:
rails test

Problemas Conhecidos
Validação de entradas: Poderia ser mais robusta.
Design: Ainda não totalmente estilizado.

Créditos
Desenvolvido por: Gabriel Rodrigues
E-mail: gabriel.rfroes@gmail.com
GitHub: https://github.com/GRFroes

Futuras Melhorias
Implementação de testes automatizados para garantir a qualidade do código.
Melhoria no design da interface

Referências
Documentação oficial do Rails
Devise GitHub
Action Cable