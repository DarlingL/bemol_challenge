# bemol_challenge
### CircleCI [![CircleCI](https://dl.circleci.com/status-badge/img/gh/DarlingL/bemol_challenge/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/DarlingL/bemol_challenge/tree/main)

__________________________________________

 ### 1. Plano de Teste descrito no Plano_de_teste.txt
 

 #### Escolhi os seguintes escopos para Teste:

 ``` 
 Login

 Checkout
 
 Perfil
 ```

 #### Cada um com seu arquivo .feature com os cenários de teste.
 #### Os Bugs listados no arquivo bug.txt
 #### Todo conteúdo na pasta  `Marvelopedia` 
 ______________________________________

 ### 2. Testes Web

 ## Para Iniciar ##


### Instalar o bundler ###
Na raiz do projeto execute:
```shell
gem install bundler
```

### Instalar Gems Necessárias do projeto ###
Na raiz do projeto execute:
```shell
bundle install
```

## Executando ##

### Rodar a Automação Web ###
Dentro do diretório `Web` execute:
```shell
cucumber -t @done
```
Para uma execução com report, execute:
```shell
cucumber -t @done --publish
```

### Obs: Automação Web ###
Browser utilizado no teste é o chrome, necessário instalar chromeDriver compatível com a versão local do chrome e seu sistema operacional! [Link de Apoio](https://chromedriver.chromium.org/downloads) 
