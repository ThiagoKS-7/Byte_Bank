# Byte Bank: Criando um App de banco                 <img width="60" height="60" src="https://c.tenor.com/B4YHFlnDZxEAAAAM/perro-bailando-dog.gif"/>
Nessa prática criaremos nosso primeiro app em Flutter. 


A ideia aqui é fazer algo prático e do conhecimento da maioria, aproveitando para explanar alguns conceitos que serão úteis no desenvolvimento das suas aplicações.

# Objetivo da prática
Nosso app final deve ser algo parecido com 

Tela inicial com brightness  |  Adicionando transferência | Tela com extrato da transferência
:-------------------------:|:-------------------------:|:-------------------------:
![WhatsApp Image 2022-04-01 at 02 39 56](https://user-images.githubusercontent.com/83460816/161366086-acd01e44-d8eb-4a60-913c-3c2523b07186.jpeg)  | ![image](https://user-images.githubusercontent.com/83460816/161366123-9c12f4a5-4de0-4fe3-b2be-f54e3b3c313c.png)  |![WhatsApp Image 2022-04-02 at 01 17 50 (2)](https://user-images.githubusercontent.com/83460816/161366141-4775d398-555a-48e4-8dd5-d8a352aa08aa.jpeg)

Tela inicial com darkmode  |  Adicionando transferência | Tela com extrato da transferência
:-------------------------:|:-------------------------:|:-------------------------:
![image](https://user-images.githubusercontent.com/83460816/161366203-6f1440e3-32ca-4c42-9c62-0ff059e7eb74.png)  | ![WhatsApp Image 2022-04-02 at 01 17 50 (3)](https://user-images.githubusercontent.com/83460816/161366540-07b88320-96fe-4c6b-8b42-9f131811e453.jpeg)  |![WhatsApp Image 2022-04-02 at 01 17 50](https://user-images.githubusercontent.com/83460816/161366551-483c2d5b-50ca-4432-8c02-447a7826dcbf.jpeg)



## 1. Baixando o Flutter
Para inciarmos nossa prática vamos fazer o download da SDK. Acesse o link abaixo e faça o download.

[Download Flutter](https://flutter.dev/docs/get-started/install)

**NOTA:** Enquanto baixamos o Flutter já podemos ir abrindo a IDE do Android Studio, para ela baixe algumas coisas.


### 1.1 Selecione uma pasta
Devemos escolher uma pasta para que deixemos a nossa SDK do Flutter.

**NOTA:** É recomendado que não se coloque dentro de pastas que requerem acessos privilegiados.

### 1.2 Adicionar ao `PATH`
Nosso Flutter já funciona, se acessarmos diretamente pela pasta `/bin` já poderemos executar alguns comandos, mas é interessante que adicionemos ao PATH, para que possamos acessar pelo terminal sem ter de direcionar para a pasta.

#### No Windows
----

No menu iniciar vamos procurar pelo item "Editar variáveis de ambiente para esta conta". Procuraremos pelo `PATH` e adicionaremos mais uma entrada, que será direcionada para a pasta `bin` dentro dos arquivos que baixamos do Flutter.

Por exemplo, suponhamos que os arquivos do Flutter encontram-se no caminho `C:\opt\flutter`. Em nosso `PATH` vamos adicionar a entrada `C:\opt\flutter\bin`.

Após isso basta reiniciar e o comando já estará acessível pelo PowerShell.

Para testar podemos executar o comando `flutter --version`

#### No Linux 
----

Em breve....

## O Emulador
Antes de criarmos o projeto e começar a escrever código de fato, é importante que criemos o emulador. Isso a gente vai poder fazer pelo `AVD Manager` do Android Studio. 

Então no Android Studio em Tools > AVD Manager vamos criar um novo device.

Podemos deixar a configuração padrão mesmo e vamos baixar uma imagem do Android, para que nosso emulador funcione. (PODEMOS DEIXAR BAIXANDO E SEGUIR)

**Quem quieser utilizar o próprio celular pode ficar a vontade, na verdade é até melhor. Você pode levar pra casa o que você fez**

Para isso vamos só ativar a função desenvolvedor. Acesse as configurações > Sistema > Sobre o dispositivo.

Toque sobre o número da versão 7 vezes.

Habilite a depuração via USB e pode conectar seu dispositivo. 

Execute o comando `flutter doctor` para ver se seu dispositivo foi reconhecido

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
