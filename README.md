# Dockerizando Flask App

Esse é um projeto bem simples para aprender a mexer com docker, fazendo o processo de dockerização com uma aplicação bem simples feita em python Flask, só pra fazer funcionar.

Pra fazer funcionar, basta ter o docker instalado e só. O resto o próprio docker faz sozinho, sem precisar até mesmo do node/npm instalado.

## Comandos Utilizados

Existem duas formas para rodar a aplicação docker que, dependendo da necessidade (como especificar e diferenciar portas de execução da aplicação), podem favorecer os casos para uso.

### 1º - Instância e Execução Automáticos

- Execute `bash sudo docker-compose up -d` para iniciar a instância de uma aplicação do docker de forma local. Caso a aplicação não tenha sido construída ainda, o docker vai, automaticamente, construir a imagem do projeto e assim executar essa e vai deixar online com as configurações definidas. Até então, a aplicação irá executar no endereço `localhost:5000` ou `127.0.0.1:5000` ou `0.0.0.0:5000`.

- Execute `bash sudo docker-compose down` para parar a instância da imagem que está executando do projeto em questão.