var express = require('express');
var router = express.Router();

/* GET landing page. */
router.get('/', function(req, res, next) {
  res.render('landing', { name:'落地页'});
});

/* GET login page. */
router.get('/login', function(req, res, next) {
  res.render('login', {name:'login'});
});

/* GET clueList page. */
router.get('/clueList', function(req, res, next) {
  res.render('clueList', {name:'线索管理'});
});

/* GET clueTrack page. */
router.get('/clueTrack', function(req, res, next) {
  res.render('clueTrack', {name:'跟踪线索', path:'返回跟踪列表', username:'周杰伦'});
});

/* GET newUser page. */
router.get('/newUser', function(req, res, next) {
  res.render('newUser', {name:'用户新建', path:'返回用户列表'});
});

/* GET userEdite page. */
router.get('/userEdite', function(req, res, next) {
  res.render('userEdite', {name:'编辑人员', path:'返回用户列表'});
});

/* GET userList page. */
router.get('/userList', function(req, res, next) {
  res.render('userList', {name:'人员管理', path:'新增人员'});
});

module.exports = router;
