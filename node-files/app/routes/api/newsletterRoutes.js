const daoClass = require('../../dao/newsletterDao');
const dao = new daoClass();

const express = require('express');
const router = express.Router();

// /api/cologne/upddate
router.post('/update/:email', (req, res) => {
    console.log(req.body);
    dao.updateById(req, res);
});

// /api/cologne/create
router.post('/create', (req, res) => {
    console.log(req.body);
    dao.create(req, res);
});

module.exports = router;