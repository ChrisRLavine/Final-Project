const daoClass = require('../../dao/signupDao');
const dao = new daoClass();

const express = require('express');
const router = express.Router();

// /api/cologne/upddate
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

router.post('/update/:password', (req, res) => {
    console.log(req.body);
    dao.updateById(req, res);
});

// /api/account/create
router.post('/create', (req, res) => {
    console.log(req.body);
    dao.create(req, res);
});

module.exports = router;