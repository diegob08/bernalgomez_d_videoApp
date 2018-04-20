var express = require('express');
var router = express.Router();
var config = require('../config');
var videoController = require('../controller/videoAppController');
// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';

router.get('/', videoController.get_all_movies);
router.get('/movies/:id', videoController.get_one_movie);

module.exports = router;


// hit routes with main page and other pages
