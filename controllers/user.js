// 逻辑操作相关文件


const User =require('./../models/user.js') 
const { dateStyle } =require('./../util/date.js') 


const userController = {
  // 插入
  insert: async function(req,res,next){
    let name = req.body.name;
    let tel = req.body.tel;
    let password = req.body.password;
    let role = req.body.role;
    let time = new Date();
    // 判断用户信息，电话，密码是否填写，如果有一样未填写return
    if (!name || !tel || !password ||!role){
      res.json ({ code:0, message:'内容未添加完全'})
      return
    }
    console.log('req',req);
    try{
      const users = await User.insert({ 
        name, tel, password, role, time
      });
      // console.log('users:',users);
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
  },
  // 插入 end
  
  // 显示在列表页
  show:async function(req,res,next){
    try{
      const user = await User.all();
      // console.log('show:',users);
      res.locals.users = user.map((data) => {
        // data.id = id
        //data.role =  （data.role == 1） ? '销售':'管理'; //如果角色存在，那么就为管理员，如果不存在，就为销售
        data.time = dateStyle(data.time);
        return data;
        
      });

      console.log('change:',res.locals);
      res.render('admin/userList', res.locals);
      
    }catch(e){
      console.log('error:',e)
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },
  // 列表页显示 end
  

  // 编辑列表页
  edit:async function(req,res,next){
    
    let id = req.params.id; 
    //req.params.id ：当路由为 path：id时 url为path/id便可获得id
    // console.log('editeR:',id);
    try{
      const user = await User.select(id); //在数据库查找id=接收值的行
      console.log('editeU:',user);
      
      res.locals.user = user[0];
      res.render('admin/userCreate',res.locals);
    }catch(e){
      console.log('editeE:',e);
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },

  // 获得被点击标签列的信息
  // update: async function(req,res,next){
  //   let 
  // }

}


module.exports = userController;
 
 