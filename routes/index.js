var express = require('express');
var router = express.Router();

/* GET landing page. */
router.get('/', function(req, res, next) {
  res.render('landing', { name:'landing'});
});

/* GET login page. */
router.get('/login', function(req, res, next) {
  res.render('login', {name:'login'});
});

/* GET clueList page. */
router.get('/clueList', function(req, res, next) {
  res.render('clueList', {name:'clueList'});
});

/* GET clueTrack page. */
router.get('/clueTrack', function(req, res, next) {
  res.render('clueTrack', {name:'clueTrack'});
});

/* GET newUser page. */
router.get('/newUser', function(req, res, next) {
  res.render('newUser', {name:'newUser'});
});

/* GET userEdite page. */
router.get('/userEdite', function(req, res, next) {
  res.render('userEdite', {name:'userEdite'});
});

/* GET userList page. */
router.get('/userList', function(req, res, next) {
  res.render('userList', {name:'userList'});
});

module.exports = router;
