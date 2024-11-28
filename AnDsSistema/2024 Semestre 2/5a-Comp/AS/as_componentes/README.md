# Avaliação Semestral - Desenvolvimento de Aplicações Orientada a Componentes

## Proposta
Avaliação semestral de Desenvolvimento de Aplicações Orientadas a Componentes.
A proposta para a avaliação se dá pela possibiliade de efetuar um CRUD em uma
API simulada localmente, via JSON Server, além do perfil componentizado da aplicação, sendo necessários o uso de hooks, estado e efeito, tal como customizados.

## Funcionalidades
- No header está o menu de navegação, apresentando as telas Home, Produtos e Adicionar;
    - Na página Home, temos uma exibição de dois cards, semelhantes a uma página de notícias (Clicar no enunciado das notícias apenas recarrega a página);
    - Na página Adicionar temos um formulário, solicitando os dados para adição de um novo produto, sendo esses "Nome", "Imagem" (URL), "Descrição" e "Preço". Os campo são todos em texto, sendo a descrição opcional. Abaixo desses, o botão para confirmar a adição;
    - Na página Produtos são listados os produtos presentes no banco local, "db.json", listando-os em Cards, com a imagem do produto, seu nome e preço. Clicar num Card abre os detalhes do produto;
        - Na página de Detalhes do Produto, estão presentes a imagem do produto, maior em relação ao card, e à sua direita, o nome do produto, sua descrição, seu valor, e sob esses, dois botões, um para editar, e outro para confirmar sua exclusão;
            - Na página de Edição do Produto, há um formulário, tal como na página de criação do produto, porém com os dados do produto selectionado já disponíveis para alteração nesse;
- Caso o usuário insira uma URL não presente no arquivo de Rotas, o mesmo é redirecionado para uma "página de erro", permitindo que use o menu para navegar novamente;

## Tecnologias Utilizadas
As tecnologias utilizadas no projeto foram o React, com HTML e CSS básicos, utilizando do pacote de navegação, além do json server para simular um banco de dados local.

## Execução do projeto
Após baixar o projeto, ou clonar o reposítório, entre na pasta do arquivo, e execute os seguintes comandos (Via terminal):
```
npm install
npm run server
```
em outro terminal, execute
```
npm run dev
```
então, abra o navegador no link (localhost:5173)