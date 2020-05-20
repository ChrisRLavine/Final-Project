const pool = require('../config/dbconfig');

class ServiceDao {
    constructor() {
        this.pool = pool;
    }

     
    updateById(req, res) {
        let fields = Object.keys(req.body);
        fields[fields.indexOf('condition')] = '`condition`';
        let values = Object.values(req.body);
        
        if (!req.params.id) {
            res.json({
                "error": true,
                "message": 'Missing ID'
            });
        } else if (fields.length == 0) {
            res.json({
                "error": true,
                "message": 'No fields to update'
            });
        }
        
        let sql = `UPDATE service SET ${fields.join('=?,')}=? WHERE id = ?`;
        
        this.pool.query(sql, [...values, req.params.id], (err, rows) => {
            if (err) {
                res.json({
                    "error": true,
                    "message": err
                });
            };
            res.json(rows);
        });        
    }

    run (req, res, sql, params) {
        this.pool.query(sql, params,function (error, rows) {
            if (error) {
                res.json({
                    "error": true,
                    "message": error
                });
            };
            res.json(rows);
        });
    }
    
    create(req, res) {
        // Required Min Data
        if (!req.body.email || !req.body.username || !req.body.fname || !req.body.lname || !req.body.message) {
            res.json({
                "error": true,
                "message": 'Missing data'
            });
        };
        let fields = Object.keys(req.body);
        let values = Object.values(req.body);
 
        fields[fields.indexOf('condition')] = '`condition`';

        let sql = `INSERT INTO service (${fields.join(',')}) 
        VALUES (${Array(values.length).fill('?').join(',')})`;
        
        this.pool.query(sql, values, (err, rows) => {
            if (err) {
                res.json({
                    "error": true,
                    "message": err
                });
            };
            if (rows.warning_count > 0) {
                this.pool.query('SHOW warnings', (err, rows) => {
                    res.json(rows);
                });
            }
            res.json(rows);
        });        
    };
}


module.exports = ServiceDao;