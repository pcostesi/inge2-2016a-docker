'use strict';

console.log('hello from docker');

var mysql = require('mysql');
var connectionSettings = {
  host: process.env.DATABASE_HOST || "db",
  database: "users",
  user: "webapp",
  password: "123",
  port: 3306 
};


var conn = mysql.createConnection(connectionSettings);


conn.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    process.exit(-1)
    return;
  }

  console.log('connected as id ' + conn.threadId);

  process.exit(0);
  // conn.query("Robert'); DROP TABLE Students;--");
});
