const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection(
    {
        host: '127.0.0.1',
        user: 'root',
        password: 'Guitar3097',
        database: 'employee_tracker'
    },
    console.log('Connected to the employee_tracker database.')
)

app.get('/', (req, res) => {
    res.json({
        message: 'Hello World!'
    });
});

db.query(`SELECT * FROM employee`, (err, rows) => {
    console.log(rows);
});

//GET a single employee
db.query(`SELECT * FROM employee WHERE id = 1`, (err, row) => {
    if (err) {
        console.log(err);
    }
    console.log(row);
});

app.use((req, res) => {
    res.status(404).end();
});

app.listen(PORT, () => {
    console.log(`Server now running on port ${PORT}`);
});