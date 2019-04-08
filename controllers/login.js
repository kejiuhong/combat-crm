const User = require('./../models/user.js');
const cryptoC = require('./../util/encrypt.js');

const adminController = {
  // 登录
  login:async function(req,res,next){
    let tel = req.body.tel;
    let password = req.body.password;

    if(!tel || !password){
      res.json({
        code:0,
        message:'内容不能为空！'
      })
      return
    }

    try{
      const users = await User.find({tel,password});
      const user = users[0]
      
      // console.log(res.locals);
      if(user){
        let user_code = tel+'\t'+password+'\t'+user.name+'\t'+user.role
        let userCriypt = cryptoC.aesEncrypt(user_code);
        // 将数据保存再cookie内
        res.cookie('userIfo',userCriypt,{maxAge:7*24*60*60*1000,httpOnly: true});
        
        console.log('ifo:',userCriypt);

        res.json({
          code:200,
          message:'登录成功！'
        })
        return
      }
      res.json({
        code:0,
        message:'登陆失败，你还不是已有用户！'
      })
    }catch(e){
      console.log(e);
      res.json({
        code:0,
        message:'内部错误！'
      })
    }
  },
  // 登录 end

  // 登录后跳转到跟踪列表页
  showLogin:async function(req,res,next){
    console.log('show:',res.locals.userIfo);
    // if(res.locals.isLogin){
    //   res.redirect('admin/clueList');
    //   return
    // }
    res.render('admin/login')
  }
  // 跟踪列表 end 

}

module.exports = adminController;