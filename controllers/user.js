// 逻辑操作相关文件


const User =require('./../models/user.js') 

const userController = {
  // 插入
  insert: async function(req,res,next){
    let name = req.body.name;
    let tel = req.body.tel;
    let password = req.body.password;
    let role = req.body.role;
    let time = new Date()
    // 判断用户信息，电话，密码是否填写，如果有一样未填写return
    if (!name || !tel || !password ||!role){
      res.json ({ code:0, message:'内容未添加完全'})
      return
    }
    
    try{
      const users = await User.insert({ 
        name, phone, password, role, time
      });

      res.json({ 
        code: 200, 
        data: users
      })

    }catch(e){

      console.log(e)
      res.json({ 
        code: 0,
        message: '内部错误'
      })

    }
  }
}


module.exports = userController;
 
 