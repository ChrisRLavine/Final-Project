const daoClass = require('../../dao/cologneDao');
const dao = new daoClass();

const express = require('express');
const router = express.Router();

// ALL COLOGNE ROUTE -> /api/cologne/
router.get('/', (req, res) => {
    dao.findAll(req, res);
});

// FIND BY ID ROUTE -> /api/cologne/:id
router.get('/:id', (req, res) => {
    dao.findById(req, res, req.params.id);
});

// // FIND BY Name ROUTE -> /api/cologne/name/:name
// router.get('/name/:name', (req, res) => { 
//     dao.findByName(req, res, req.params.name);
// });

// // FIND BY Brand ROUTE -> /api/cologne/brand/:brand
// router.get('/brand/:brand', (req, res) => { 
//     dao.findBy(req, res, req.params.brand);
// });

// // FIND BY Type ROUTE -> /api/cologne/type/:type
// router.get('/type/:type', (req, res) => { 
//     dao.findByBrand(req, res, req.params.type);
// });

// // FIND BY Image ROUTE -> /api/cologne/picture/:picture
// router.get('/picture/:picture', (req, res) => { 
//     dao.findByBrand(req, res, req.params.picture);
// });

// // FIND BY On Sale ROUTE -> /api/cologne/onsale
// router.get('/onsale:onsale', (req, res) => { 
//     dao.findByOnSale(req, res, req.params.onsale);
// });

// // FIND BY Bestseller ROUTE -> /api/cologne/bestseller
// router.get('/bestseller:bestseller', (req, res) => { 
//     dao.findByBestseller(req, res, req.params.bestseller);
// });

// // FIND BY New Arrivals ROUTE -> /api/cologne/New Arrival
// router.get('/newest/:newest', (req, res) => { 
//     dao.findByNewest(req, res, req.params.newest);
// });

// // /api/cologne/upddate
// router.post('/update/:id', (req, res) => {
//     console.log(req.body);
//     dao.updateById(req, res);
// });

module.exports = router;