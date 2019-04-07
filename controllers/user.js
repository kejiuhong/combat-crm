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
    // console.log('req',req);
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
      const user = await User.sort();
      // console.log('show:',users);
      res.locals.users = user.map((data) => {
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
    // console.log('editeR:',{id});
    try{
      const users = await User.find({id}); //在数据库查找id=接收值的行
      res.locals.user = users[0]; //users是一个数组，所以加上一个小标0
      // console.log('editeU:',res.locals);      
      res.render('admin/userEdit', res.locals);
    }catch(e){
      // console.log('editeE:',e);
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },

  //人员编辑后数据库信息做相应更新
  update: async function(req,res,next){
    // console.log(req);
    let id = req.body.id;
    let name = req.body.name;
    let tel = req.body.tel;
    let password = req.body.password;
    let role = req.body.role;
    let time = new Date();

    if(!name || !tel || !password || !role){
      res.json({
        code: 0,
        message: '内容不能为空！'
      });
      return 
    }
    // console.log('ids:', id);
    try{
      const users = await User.update(id, {name, tel, password, role, time});
      // console.log('update:',users);
      res.json({
        code: 200,
        data: users
      })
    }catch(e){
      console.log('updateE:',e);
      res.json({
        code:0,
        message:'内部错误！'
      })
    }
  }

}


module.exports = userController;
 
 