var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');

/* GET landing page. */
router.get('/', function(req, res, next) {
  res.render('index', { name:'落地页'});
});

/* GET login page. */
router.get('/admin/login', function(req, res, next) {
  res.render('admin/login', {name:'login'});
});

/* GET clueList page. */
router.get('/admin/clue/list', function(req, res, next) {
  res.render('admin/clueList', {name:'线索管理'});
});

/* GET clueTrack page. */
router.get('/admin/clue/track', function(req, res, next) {
  res.render('admin/clueTrack', {name:'跟踪线索', path:'返回跟踪列表', username:'周杰伦'});
});

/* GET userCreate page. */
router.get('/admin/user/create', function(req, res, next) {
  res.render('admin/userCreate');
});

/* GET userEdite page. */
router.get('/admin/user/edit/:id', userController.edit);

/* GET userList page. */
router.get('/admin/user/list',userController.show);

module.exports = router;
