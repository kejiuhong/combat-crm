var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');
var adminController = require('./../controllers/login.js');
var indexController = require('./../controllers/clue.js');
var userMostLogin = require('./../midware/mostLogin.js');

/* GET landing page. */
router.get('/', function(req, res, next) {
  res.render('index', { name:'落地页'});
});

/* GET login page. */
router.get('/admin/login', adminController.showLogin);

/* GET clueList page. */
router.get('/admin/clue/list',userMostLogin.mostLogin, indexController.clueShow);


/* GET clueTrack page. */
router.get('/admin/clue/track',userMostLogin.mostLogin, indexController.clueShow);

/* GET userCreate page. */
router.get('/admin/user/create',userMostLogin.mostLogin, function(req, res, next) {
  res.render('admin/userCreate');
});

/* GET userEdite page. */
router.get('/admin/user/edit/:id',userMostLogin.mostLogin, userController.edit);

/* GET userList page. */
router.get('/admin/user/list',userMostLogin.mostLogin,userController.show);

module.exports = router;
