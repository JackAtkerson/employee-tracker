const express = require('express');
const router = express.Router();
const db = require('../../db/connection');

// GET all departments
router.get('/departments', (req, res) => {
    const sql = `SELECT * FROM departments`;
    db.query(sql, (err, rows) => {
      if (err) {
        res.status(500).json({ error: err.message });
        return;
      }
      res.json({
        message: 'success',
        data: rows
      });
    });
  });

// DELETE a department
router.delete('department/:id', (req ,res) => {
    const sql = `DELETE FROM departments WHERE id = ?`;
    const params = [req.params.id];

    db.query(sql, params, (err, result) => {
        if (err) {
            res.statusMessage(400).json({ error: res.message });
        } else if (!result.affectedRows) {
            res.json({
                message: 'Department not found!'
            });
        } else {
            res.json({
                message: 'deleted',
                changes: result.affectedRows,
                id: req.params.id
            });
        }
    });
});

// CREATE a department
router.post('/department', ({ body }, res) => {
    const errors = inputCheckBody(body, 'name');
    if (errors) {
        res.status(400).json({ error: errors });
        return;
    }
    const sql = `INSERT INTO departments (name)
                VALUES (?)`;
    const params = [body.name];

    db.query(sql, params, (err, result) => {
        if   (err) {
            res.status(400).json({ error: err.message });
            return;
        }
        res.json({
            message: 'success',
            data: body
        });
    });
});

module.exports = router;