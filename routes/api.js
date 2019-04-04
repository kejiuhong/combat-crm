// 配置api相关路径

var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js')

// 用户新建页面
router.post('/user', userController.insert);
// router.post('/userEdite:id', userController.edite);

module.exports = router;