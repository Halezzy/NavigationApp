# Navigation App

## Descrição do Projeto

Este projeto foi desenvolvido com o objetivo de demonstrar a utilização de navegação no Flutter, utilizando recursos como **`Navigator`**, **`push`**, **`Stateful`** e **`Stateless`**. O foco principal deste app é demonstrar a navegação fluida entre telas, utilizando o **`Navigator.pushReplacement`** para uma navegação controlada, além da utilização de `StatefulWidget` e `StatelessWidget` para gerenciar o estado e estrutura do app.

### Funcionalidades:
- Tela de **Login** com entrada de email e senha.
- Opção de **"Esqueci a senha"**, com interface moderna e acessível.
- Tela de **Cadastro** com nome, email e senha.
- Navegação entre diversas telas via **Drawer** e **Bottom Navigation Bar**.
- Telas personalizadas para **Perfil**, **Vídeos**, **Fotos**, **Contatos** e **Configurações**, com layout coerente ao tema do app.
- Exibição de imagens com interações por toque simples (selecionar com ícones) e duplo toque (abrir em visualização completa).
- Exemplo prático de como navegar entre telas no Flutter, utilizando **`Navigator.pushReplacement`** para limpar o histórico de navegação e levar o usuário de volta à tela de login após o logout.

## Tecnologias Utilizadas
- **Flutter**: Framework para desenvolvimento de aplicativos móveis.
- **Dart**: Linguagem de programação utilizada no Flutter.
- **StatefulWidget** e **StatelessWidget**: Widgets para gerenciar o estado das telas.
- **Material Design**: Interface adaptada aos princípios de UI/UX do Material 3.

## Instruções de Uso

### Passos para rodar o projeto:
1. Clone este repositório.
2. Abra o projeto no Android Studio ou VS Code.
3. Certifique-se de que o Flutter SDK está instalado corretamente.
4. Execute o comando `flutter pub get` para instalar as dependências.
5. Execute o comando `flutter run` para rodar o app no dispositivo ou emulador.

### Tela de Login:
- Ao abrir o app, você será direcionado à tela de login.
- Insira seu e-mail e senha (sem validação real neste exemplo).
- Clique em **"Entrar"** para ser redirecionado à tela principal do usuário (`UserHomeScreen`).
- Se necessário, utilize a opção **"Esqueci a senha"** para redefinição (a funcionalidade pode ser expandida).

### Tela Principal (`UserHomeScreen`):
- Na tela principal, você encontrará um **Drawer** com opções para acessar diferentes telas:
    - **Perfil**
    - **Vídeos**
    - **Fotos** (com seleção e visualização de imagens)
    - **Contatos**
    - **Configurações**
- Há também um **Bottom Navigation Bar** com 5 seções: **Home**, **Feed**, **Network**, **MarketPlace**, e **Notificações**.

### Logout:
- Para sair do app, clique na opção **"Sair"** no menu lateral (**Drawer**).
- Isso irá limpar a navegação e retornar à tela de login.

## Navegação:
O app utiliza o **`Navigator.pushReplacement`** para garantir transições suaves entre telas e evitar o retorno indesejado após logout. A estrutura também demonstra como separar navegação entre Drawer e BottomNavigation.

## Utilização de Stateful e Stateless:
- **StatefulWidget**: usado para telas com navegação dinâmica e estado controlado.
- **StatelessWidget**: usado para telas estáticas ou que não requerem controle de estado.

## Considerações Finais
Este projeto foi desenvolvido como um **estudo de navegação** e demonstra o uso de várias técnicas e widgets no Flutter. A lógica e conteúdo das páginas podem ser expandidos conforme a necessidade de estudantes, professores e desenvolvedores.

---

**Atividade: Rotas com Navigator**  
**Hugo Alessi**  
**Pós - Especialização em Desenvolvimento Web**  
**IFSP - Campus Itapetininga**  
**Desenvolvimento para Dispositivos Móveis**  
**Prof. Acácia Terra**
