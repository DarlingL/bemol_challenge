"use strict";

 // Importaçao frameworks
const { faker } = require('@faker-js/faker');



// Dados Faker
var email_ = faker.internet.email();
var nome_ = faker.internet.userName();
var password_ = faker.internet.password();
var quantidade_ = faker.random.numeric(5) 
var preco_ = faker.random.numeric(3)
var produto_ = faker.commerce.product()
var descricao_ = faker.commerce.productDescription()

var novo_user = {
    email: email_,
    nome: nome_,
    password: password_,
    administrador: "true"
};

var novo_produto = {
    nome: produto_,
    preco: preco_,
    descricao: descricao_,
    quantidade: quantidade_,
};

var user_passw = {
    email: 'fulano@qa.com',
    password: 'teste',
};


module.exports = {
    novo_user,
    novo_produto,
    user_passw,
};