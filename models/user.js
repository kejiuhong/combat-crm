// 用户数据库操作相关文件

// 引用基础数据库
const base = require('./base.js');

// 定义用户模型并基础模型
const User extends base{
  // 定义参数默认值为user表格
  constructor (props = 'user') {
    super(props);
  }
}


module.exports = new User()