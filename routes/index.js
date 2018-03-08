var express = require('express');
var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('home', {
    title: 'Dashboard',
    message: "handlebars is awesome",
    mainpage: true,
    cms: false,
    kidsmode: config.kidsmode
  });
});

router.get('/cms', (req, res) => {
  console.log('init the cms route');
  res.render('cmsform', {
    cms: true,
    mainpage: false
  });
});

module.exports = router;


// hit routes with main page and other pages
