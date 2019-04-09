// 配置api相关路径

var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');
var adminController = require('./../controllers/login.js');
var indexController = require('./../controllers/clue.js');

// 用户新建页面
router.post('/user', userController.insert);
router.post('/user/edit', userController.update);
router.post('/user/login', adminController.login);
router.post('/index', indexController.clueInsert);
router.post('/clue/save', indexController.clueUpdate);
router.post('/clue/add', indexController.trackUpdate);


module.exports = router;