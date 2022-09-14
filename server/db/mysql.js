"use strict"
const mysql = require('mysql2');

// *************** Constants and variables *************** 
let pool   

// *************** Functions *************** 
const init = ()=>{
  
     pool = mysql.createPool({
        host    : process.env.MYSQL_HOST_IP,
        user    : process.env.MYSQL_USER,
        password: process.env.MYSQL_PASSWORD,
        database: process.env.MYSQL_DATABASE
      });

      const db = `'${process.env.MYSQL_DATABASE}'`;

    pool.query(`select schema_name from information_schema.schemata where schema_name = ${db}`, (err, results) => {
      if (err) console.log(err);
      else console.log(results);
    })
}

const transmit = (sql, values = [])=>{
  
  if(!pool) init();

  return new Promise((res,rej) => {

    pool.query(sql, values, (err, results) => {
      if (err)  rej(err);
      else      res(results);
    });
  })
}

module.exports = {
    init,
    transmit
}