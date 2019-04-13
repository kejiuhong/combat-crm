// 配置api相关路径

var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');
var adminController = require('./../controllers/login.js');
var indexController = require('./../controllers/clue.js');

// 用户新建页面
router.post('/user', userController.insert); //销售人员新建
router.post('/user/edit', userController.update); //销售人员列表更新
router.post('/user/login', adminController.login); //管理人员登录
router.post('/index', indexController.clueInsert); //用户录入
router.post('/clue/save', indexController.clueUpdate); //用户情况更新
router.post('/clue/add', indexController.trackUpdate); //业务情况更新
router.get('/login/out', adminController.loginOut); //用户退出
router.post('/del/track', indexController.del); //线索跟踪删除
router.post('/del/user', userController.del); //销售删除
// router.post('/clue/filter', indexController.selectFilter); //线索跟踪列表显示筛选后数据


module.exports = router;