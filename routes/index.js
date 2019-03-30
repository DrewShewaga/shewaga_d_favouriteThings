var express = require('express');
var router = express.Router();

var connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', function(req, res, next) {
  //Do a db query and get some of the hero data
  connect.query(`SELECT name, avatar FROM tbl_rockets`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }else{
      console.log(result);
      res.render('index', { avatars: result });
    }
  });
  
});

//Get idividual data/ bio info
router.get('/:tbl_rockets', function(req, res, next) {
  //Do a db query and get some of the hero data
  connect.query(`SELECT * FROM tbl_rockets WHERE name="${req.params.tbl_rockets}"`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }else{
      console.log(result);
      res.render('bio', { bioData: result[0] });
    }
  });
  
});

module.exports = router;
