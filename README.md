# Navigation App

## Descrição do Projeto

Este projeto foi desenvolvido com o objetivo de demonstrar a utilização de navegação no Flutter, utilizando recursos como **`Navigator`**, **`push`**, **`Stateful`** e **`Stateless`**. O foco principal deste app é demonstrar a navegação fluida entre telas, utilizando o **`Navigator.pushReplacement`** para uma navegação controlada, além da utilização de `StatefulWidget` e `StatelessWidget` para gerenciar o estado e estrutura do app.

### Funcionalidades:
- Tela de **Login** com entrada do nome de usuário (sem necessidade de senha).
- Tela de **Cadastro** com nome, email, e senha (ainda em desenvolvimento).
- Navegação entre diversas telas via **Drawer** e **Bottom Navigation Bar**.
- Telas adicionais que podem ser personalizadas para a estrutura de cada estudante e/ou usuário.
- Exemplo prático de como navegar entre telas no Flutter, utilizando **`Navigator.pushReplacement`** para limpar o histórico de navegação e levar o usuário de volta à tela de login após o logout.

## Tecnologias Utilizadas
- **Flutter**: Framework para desenvolvimento de aplicativos móveis.
- **Dart**: Linguagem de programação utilizada no Flutter.
- **StatefulWidget** e **StatelessWidget**: Widgets para gerenciar o estado das telas.

## Instruções de Uso

### Passos para rodar o projeto:
1. Clone este repositório.
2. Abra o projeto no Android Studio ou VS Code.
3. Certifique-se de que o Flutter SDK está instalado corretamente.
4. Execute o comando `flutter run` para rodar o app no dispositivo ou emulador.

### Tela de Login:
- Ao abrir o app, você será direcionado à tela de login. O nome do usuário pode ser digitado no campo de texto (sem necessidade de senha).
- Após digitar o nome, clique em **"Entrar"** para ser redirecionado à tela principal do usuário (`UserHomeScreen`).

### Tela Principal (`UserHomeScreen`):
- Na tela principal, você encontrará um **Drawer** com opções para acessar diferentes telas: **Perfil**, **Vídeos**, **Fotos**, **Contatos**, e **Configurações**.
- Há também um **Bottom Navigation Bar** com 5 opções de navegação: **Home**, **Feed**, **Network**, **MarketPlace**, e **Notificações**.

### Logout:
- Para sair do app, clique na opção **"Sair"** no menu lateral (**Drawer**). Isso irá limpar a navegação e retornar à tela de login.

## Navegação:
O app foi projetado para demonstrar a navegação utilizando o **`Navigator.pushReplacement`**, garantindo uma transição suave entre as telas e evitando a navegação indesejada de volta às telas anteriores (por exemplo, após o logout).

### Utilização de Stateful e Stateless:
- **StatefulWidget** foi utilizado nas telas que possuem alteração de estado, como a tela principal com navegação no **Bottom Navigation Bar** e **Drawer**.
- **StatelessWidget** foi utilizado nas telas estáticas, como a tela de login e cadastro.

## Considerações Finais
Este projeto foi desenvolvido como um **estudo de navegação** e demonstra o uso de várias técnicas e widgets no Flutter. A lógica e conteúdo das páginas ou screens podem ser expandidas conforme as necessidades de estudantes e interessados que desejem utilizar a estrutura do **Navigation App** para dar início a projetos mais complexos.

**Atividade: Rotas com Navigator**  
**Hugo Alessi**  
**Pós Desenvolvimento Wed**  
**IFSP - Campus Itapetininga**  
**Desenvolvimento para Dispositivos Móveis**  
**Prof. Acácia Terra**
