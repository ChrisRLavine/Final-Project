const pool = require('../config/dbconfig');

class CologneDao {
    constructor() {
        this.pool = pool;
    }

    findAll(req, res) {
        let sql = `SELECT c.Id, c.Name, b.Brand, t.Type, c.picture
        FROM colognes c 
        JOIN brand b 
        on c.Brand = b.Id 
        JOIN  type t 
        on c.type = t.Id`;
        this.pool.query(sql, function(err, rows) {
            if (err) {
                res.json({
                    "error": true,
                    "message": err
                });
            };
            res.json(rows);
        });        
    }

    findById(req, res, id) {
        let sql = `SELECT c.Id, c.Name, b.Brand, t.Type, c.picture
        FROM colognes c 
        JOIN brand b 
        on c.Brand = b.Id 
        JOIN  type t 
        on c.type = t.Id where c.Id = ? ;`;
        this.pool.query(sql, [id], (err, rows) => {
            if (err) {
                res.json({
                    "error": true,
                    "message": err
                });
            };
            res.json(rows[0]);
        });
    }

    // findByName(req, res, name) {
    //     let sql = 'SELECT * FROM cologne WHERE name = ?';
    //     this.pool.query(sql, [name], (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         res.json(rows[0]);
    //     });
    // }

    // findByOnSale(req, res, on_sale) {
    //     let sql = 'SELECT * FROM cologne WHERE on_sale = 1';
    //     this.pool.query(sql, [on_sale], (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         res.json(rows[4]);
    //     });
    // }

    // findByBestseller(req, res, bestseller) {
    //     let sql = 'SELECT * FROM cologne WHERE bestseller = 1';
    //     this.pool.query(sql, [bestseller], (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         res.json(rows[5]);
    //     });
    // }

    // findByNewest(req, res, newest) {
    //     let sql = 'SELECT * FROM cologne WHERE new_arrival = 1';
    //     this.pool.query(sql, [newest], (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         res.json(rows[6]);
    //     });
    // }


    // findByBrand(req, res, brand) {
    //     let sql = `SELECT c.Name, b.Brand 
    //     FROM cologne c 
    //     JOIN brand b on c.Brand = b.Id  = ?`;
    //     this.pool.query(sql, [brand], (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         res.json(rows);
    //     });
    // }

    // findByType(req, res, type) {
    //     let sql = `SELECT c.Name, t.type 
    //     FROM cologne c 
    //     JOIN type t 
    //     on c.Brand = t.Id = ?`;
    //     this.pool.query(sql, [type], (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         res.json(rows);
    //     });
    // }
 
    // updateById(req, res) {
    //     let fields = Object.keys(req.body);
    //     fields[fields.indexOf('condition')] = '`condition`';
    //     let values = Object.values(req.body);
        
    //     if (!req.params.id) {
    //         res.json({
    //             "error": true,
    //             "message": 'Missing ID'
    //         });
    //     } else if (fields.length == 0) {
    //         res.json({
    //             "error": true,
    //             "message": 'No fields to update'
    //         });
    //     }
        
    //     let sql = `UPDATE cologne SET ${fields.join('=?,')}=? WHERE id = ?`;
        
    //     this.pool.query(sql, [...values, req.params.id], (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         res.json(rows);
    //     });        
    // }

    // run (req, res, sql, params) {
    //     this.pool.query(sql, params,function (error, rows) {
    //         if (error) {
    //             res.json({
    //                 "error": true,
    //                 "message": error
    //             });
    //         };
    //         res.json(rows);
    //     });
    // }
    
    // create(req, res) {
    //     // Required Min Data
    //     if (!req.body.brand || !req.body.type) {
    //         res.json({
    //             "error": true,
    //             "message": 'Missing data'
    //         });
    //     };
    //     let fields = Object.keys(req.body);
    //     let values = Object.values(req.body);
 
    //     fields[fields.indexOf('condition')] = '`condition`';

    //     let sql = `INSERT INTO cologne (${fields.join(',')}) 
    //     VALUES (${Array(values.length).fill('?').join(',')})`;
        
    //     this.pool.query(sql, values, (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         if (rows.warning_count > 0) {
    //             this.pool.query('SHOW warnings', (err, rows) => {
    //                 res.json(rows);
    //             });
    //         }
    //         res.json(rows);
    //     });        
    // };

    // //delete by Id
    // deleteById(req, res, id) {
    //     let sql = 'UPDATE cologne set deleted_at = NOW() WHERE id = ?';
    //     this.pool.query(sql, [id], (err, rows) => {
    //         if (err) {
    //             res.json({
    //                 "error": true,
    //                 "message": err
    //             });
    //         };
    //         res.json(rows);
    //     });
    // }
}


module.exports = CologneDao;