"use strict"
const mysql = require('mysql2');

// *************** Constants and variables *************** 
let db   

// *************** Functions *************** 
const init = ()=>{
  
     db = mysql.createConnection({
        host    : process.env.MYSQL_HOST ,
        user    : process.env.MYSQL_USER ,
        password: process.env.MYSQL_PASSWORD ,
        database: process.env.MYSQL_DATABASE 
      });

      db.connect(err =>
        {
          if (err) {
              console.log('Database connection failed. ' + err.message)
          } else {
              console.log('Database connected.')
          }
        })
      // const db = `'${process.env.MYSQL_DATABASE}'`;

    // pool.query(`select schema_name from information_schema.schemata where schema_name = ${db}`, (err, results) => {
    //   if (err) console.log(err);
    //   else console.log(results);
    // })
}

const transmit = (sql, values = [])=>{
  
  // At first request, db shall be initialized
  if(!db) init();

  return new Promise((res,rej) => {

    db.query(sql, values, (err, results) => {
      if (err)  rej(err);
      else      res(results);
    });
  })
}

module.exports = {
    init,
    transmit
}
