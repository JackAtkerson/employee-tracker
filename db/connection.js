const mysql = require('mysql2');

const db = mysql.createConnection(
    {
        host: '127.0.0.1',
        user: 'root',
        password: 'Guitar3097',
        database: 'employee_tracker'
    },
    console.log('Connected to the employee_tracker database.')
);

module.exports = db;