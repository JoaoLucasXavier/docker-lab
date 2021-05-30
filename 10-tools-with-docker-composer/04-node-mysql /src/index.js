const express = require('express');
const app = express();
const port = 3000;

// MYSQL
const config = {
  host: 'db',
  user: 'root',
  password: 'root',
  database: 'appdb'
};

const mysql = require('mysql');
const connection = mysql.createConnection(config);
const sql = `INSERT INTO people(name) values('João Lucas')`;
connection.query(sql);
// connection.end();
// END: MYSQL

app.get('/', (req, res) => {
  res.send('<h1>People inserting successfully!</h1>');
})
app.listen(port, () => {
  console.log(`Running on port ${port}. . . .`);
})
