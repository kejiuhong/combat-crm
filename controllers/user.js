// 用户逻辑操作相关文件


const user =require('./../models/user.js') 

const userContructor = {
  // 插入
  insert: async function(req,res,next){
    let name = req.data.name;
    let tel = req.data.tel;
    let password = req.data.password;
    let role = req.data.role;
    let time = new Date()
    // 判断用户信息，电话，密码是否填写，如果有一样未填写return
    if (!name || !tel || !password ||!role){
      return ('内容未添加完全')
    }
  }
}
 
 