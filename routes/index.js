var express = require('express');
var router = express.Router();

/* GET landing page. */
router.get('/', function(req, res, next) {
  res.render('index', { name:'落地页'});
});

/* GET login page. */
router.get('/admin/login', function(req, res, next) {
  res.render('admin/login', {name:'login'});
});

/* GET clueList page. */
router.get('/admin/clueList', function(req, res, next) {
  res.render('admin/clueList', {name:'线索管理'});
});

/* GET clueTrack page. */
router.get('/admin/clueTrack', function(req, res, next) {
  res.render('admin/clueTrack', {name:'跟踪线索', path:'返回跟踪列表', username:'周杰伦'});
});

/* GET newUser page. */
router.get('/admin/newUser', function(req, res, next) {
  res.render('admin/newUser', {name:'用户新建', path:'返回用户列表'});
});

/* GET userEdite page. */
router.get('/admin/userEdite', function(req, res, next) {
  res.render('admin/userEdite', {name:'编辑人员', path:'返回用户列表'});
});

/* GET userList page. */
router.get('/admin/userList', function(req, res, next) {
  res.render('admin/userList', {name:'人员管理', path:'新增人员'});
});

module.exports = router;
