# bemol_challenge
###  [![CircleCI](https://dl.circleci.com/status-badge/img/gh/DarlingL/bemol_challenge/tree/main.svg?style=shield)](https://dl.circleci.com/status-badge/redirect/gh/DarlingL/bemol_challenge/tree/main)

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
 #### Considerações sobre as automações no arquivo resumo.txt
 #### Todo conteúdo na pasta  `Marvelopedia` 
 ______________________________________

 ### 2. Testes Web

 ## Para Iniciar ##

 ## **Dependências:**
```
Ruby v2.7 ou superior
```


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

 ______________________________________

 ### 3. Testes API
 ## **Frameworks Utilizados:**

<img src="https://github.com/DarlingL/api_test_goRest/blob/master/suporte/frameworks.png?raw=true" width="550">

 ## Para Iniciar ##

 ## **Dependências:**
```
Node.js v18 ou superior
```
## **Atualizando o Projeto:**

Executar o comando na pasta API:
```
sudo npm install --safe
```
O comando vai instalar ou atualizar todos os frameworks utilizados no projeto, caso falhe instale manualmente:

```
sudo npm install supertest -g
sudo npm install mocha -g
sudo npm install chai -g
sudo npm install joi -g
sudo npm install joi-assert -g
sudo npm install mochawesome -g
sudo npm install faker -g
```


## **Execução dos testes:**
Executar o comando dentro da pasta API:
```
npm run exec_teste
```

Cada Execução gera um relatório HTML, que pode ser acessado em:
```
API/mochawesome-report/mochawesome.html
```