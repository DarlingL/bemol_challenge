"use strict";

 // Importaçao frameworks
const Joi = require("joi");



const schemaUserCriado = Joi.object({
  message: Joi.string().required(),
  _id: Joi.string().required(),
});

const schemaUser = Joi.object({
  _id: Joi.string().required(),
  email: Joi.string().required(),
  nome: Joi.string().required(),
  password: Joi.string().required(),
  administrador: Joi.string().required(),
  });

const schemaProdutoCriado = Joi.object({
  nome: Joi.string().required(),
  preco: Joi.number().required(),
  descricao: Joi.string().required(),
  quantidade: Joi.number().required(),
  _id: Joi.string().required(),
  });




module.exports = {
  schemaUserCriado,
  schemaUser,
  schemaProdutoCriado,
  };