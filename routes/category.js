var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET Category page , here I'm using /: to get a category */
router.get('/:category', (req, res) => {
  var category = req.params.category;
  connect.query('SELECT * FROM video WHERE category = ?', [category], (err, result) => { //grabbing the category from database videos
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);

      res.render('category', {
        category: 'Category',
        title: 'Category ' + category,
        message: "This is the page for: " + category,
        videoData: result
      });
    }
  });
});

module.exports = router;
