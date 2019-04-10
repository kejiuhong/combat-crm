var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js'); //管理员页面
var adminController = require('./../controllers/login.js'); //登录，退出
var indexController = require('./../controllers/clue.js'); //线索跟踪页面
var userMostLogin = require('./../midware/mostLogin.js'); //登录验证

/* GET landing page. */
router.get('/', function(req, res, next) {
  res.render('index', { name:'落地页'});
});

/* GET login page. */
router.get('/admin/login',adminController.showLogin);
/* GET login out page*/
// router.get('/login', adminController.loginOut);

/* GET clueList page. */
router.get('/admin/clue/list',userMostLogin.mostLogin, indexController.clueShow);


/* GET clueTrack page. */
router.get('/admin/clue/track/:id',userMostLogin.mostLogin, indexController.clueEdit);

/* GET userCreate page. */
router.get('/admin/user/create',userMostLogin.mostLogin, userMostLogin.roleFilter,function(req, res, next) {
  res.render('admin/userCreate');
});

/* GET userEdite page. */
router.get('/admin/user/edit/:id',userMostLogin.mostLogin,userMostLogin.roleFilter, userController.edit);

/* GET userList page. */
router.get('/admin/user/list',userMostLogin.mostLogin,userMostLogin.roleFilter, userController.show);

module.exports = router;
