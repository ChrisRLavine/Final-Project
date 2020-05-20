const express = require('express');
const router = express.Router();

// /api/cologne
router.use('/colognes', require('./api/cologneRoutes'));

// /api/emails
router.use('/contact', require('./api/newsletterRoutes'));

// /api/account
router.use('/account', require('./api/signupRoutes'));

// /api/service
router.use('/service', require('./api/serviceRoutes'));


module.exports = router;
// /api/cologne/id
// router.use('/', require('./api/cologneRoutes'));