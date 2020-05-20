const daoClass = require('../../dao/serviceDao');
const dao = new daoClass();

const express = require('express');
const router = express.Router();

router.post('/create', (req, res) => {
    console.log(req.body);
    dao.create(req, res);
});

router.post('/update/:email', (req, res) => {
    console.log(req.body);
    dao.updateById(req, res);
});

router.post('/update/:username', (req, res) => {
    console.log(req.body);
    dao.updateById(req, res);
});

router.post('/update/:fname', (req, res) => {
    console.log(req.body);
    dao.updateById(req, res);
});

router.post('/update/:lname', (req, res) => {
    console.log(req.body);
    dao.updateById(req, res);
});

router.post('/update/:message', (req, res) => {
    console.log(req.body);
    dao.updateByMessage(req, res);
});

// /api/account/create
router.post('/create', (req, res) => {
    console.log(req.body);
    dao.create(req, res);
});

module.exports = router;
