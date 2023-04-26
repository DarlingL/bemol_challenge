"use strict";
process.env.NODE_TLS_REJECT_UNAUTHORIZED = "1";

var request = require("supertest");


const URL = process.env.NODE_ENV;
const PATH_AUTH_LOGIN = "/login";



const getToken = (user_passw) =>
  request(URL)
    .post(PATH_AUTH_LOGIN)
    .send(user_passw)
  
 
module.exports = {
  getToken,
};