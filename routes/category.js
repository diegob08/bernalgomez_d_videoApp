var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET Category page. */
router.get('/:category', (req, res) => {
  var category = req.params.category;

  res.render('category', {
    title: 'Category ' + category,
    message: "This is a list for category: " + category,
  });
  // connect.query('SELECT * FROM mainmodel', (err, result) => {
  //   if (err) {
  //     throw err;
  //     console.log(err);
  //   } else {
  //     console.log(result);
  //
  //     res.render('cars', {
  //       title: 'Mini Cars',
  //       message: "A Selection of Minis",
  //       carData: result
  //     });
  //   }
  // });
});

module.exports = router;
