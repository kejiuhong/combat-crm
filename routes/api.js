// 配置api相关路径

var express = require('express');
var router = express.router();


// 用户新建页面
router.get('/admin/login',userContructor.insert);