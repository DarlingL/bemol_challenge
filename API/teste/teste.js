"use strict";

  // Importaçao frameworks
  var request = require("supertest");
  var expect = require("chai").expect;
  var joiAssert = require("joi-assert");

  // Login
  const token_factory = require("../functions/token_factory");

  // Payloads e Variaveis
  var id_user = "";
  var id_produto = ""; 
  var token = "";
  const {
    novo_user,
    novo_produto,
    user_passw,
  } = require("../dados/dados");

  //Schemas
  const {
    schemaUserCriado,
    schemaUser,
    schemaProdutoCriado,
  } = require("../schemas/schema");

  // Config
  const request_timeout = 200000;
  const URL = process.env.NODE_ENV;

  // Paths
  const PATH_USER = "/usuarios"
  const PATH_PRODUTO = "/produtos"

describe("Cenários de Testes - Bemol", function() {
    this.timeout(request_timeout);
    before(done => {
      token_factory.getToken(user_passw).then(res => {
        token = res.body.authorization;
        done();
      });
    });
  
  it("Criar Novo Usuário", function(done) {
    this.timeout(request_timeout);
    request(URL)
    .post(PATH_USER)
    .send(novo_user)
    .expect("Content-Type", /json/)
    .end(function(err, res) {
      expect(res.status).to.be.eql(201);
      expect(res.body.message).to.be.eql('Cadastro realizado com sucesso');
      joiAssert(res.body, schemaUserCriado);
      id_user = (res.body._id)
      done(err);
    });
  });

  it("Validar Usuário Criado", function(done) {
    this.timeout(request_timeout);
    request(URL)
    .get(PATH_USER + "/" + id_user)
    .expect("Content-Type", /json/)
    .end(function(err, res) {
      expect(res.status).to.be.eql(200);
      joiAssert(res.body, schemaUser);
      done(err);
    });
  });

  it("Criar Novo Produto", function(done) {
    this.timeout(request_timeout);
    request(URL)
    .post(PATH_PRODUTO)
    .send(novo_produto)
    .set("authorization", token)
    .expect("Content-Type", /json/)
    .end(function(err, res) {
      expect(res.status).to.be.eql(201);
      expect(res.body.message).to.be.eql('Cadastro realizado com sucesso');
      joiAssert(res.body, schemaUserCriado);
      id_produto = (res.body._id)
      done(err);
    });
  });

  it("Validar Produto Criado", function(done) {
    this.timeout(request_timeout);
    request(URL)
    .get(PATH_PRODUTO + "/" + id_produto)
    .set("authorization", token)
    .expect("Content-Type", /json/)
    .end(function(err, res) {
      expect(res.status).to.be.eql(200);
      joiAssert(res.body, schemaProdutoCriado);
      done(err);
    });
  });


})