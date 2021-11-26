const express = require('express');
const router = express.Router();

router.get('/', (req, res) =>{
    res.render('index');
});

router.get('/who', (req, res) =>{
    res.render('links/info');
});

module.exports = router;