var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET Category page. */
router.get('/:category', (req, res) => {
  var category = req.params.category;
  connect.query('SELECT * FROM video WHERE category = ?', [category], (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);

      res.render('category', {
        title: 'Category ' + category,
        message: "This is a list for category: " + category,
        videoData: result
      });
    }
  });
});

module.exports = router;
