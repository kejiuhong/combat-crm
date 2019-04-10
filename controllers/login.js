const User = require('./../models/user.js');
const cryptoC = require('./../util/encrypt.js');

const adminController = {
  // 登录
  /*
   * 验证
   * 电话，密码不能为空
   * 电话满足11位
   * 密码6位以上
   * 
   */
  login:async function(req,res,next){
    let tel = req.body.tel;
    let password = req.body.password;
    console.log(tel);
    if(!tel || !password){
      res.json({
        code:0,
        message:'内容不能为空！'
      })
      return
    }

    var telCheck = /^[1][3,4,5,7,8][0-9]{9}$/;
    if(tel.length == 12 && telCheck.test(tel) ){
      res.json({
        code:0,
        message:'账号应为11位手机号！'
      })
    }

    if(password.length > 6){
      res.json({
        code:0,
        message:'密码需要多于6位数！'
      })
    }

    try{
      const users = await User.find({tel,password});
      const user = users[0]
      
      if(user){
        let user_code = tel+'\t'+password+'\t'+user.name+'\t'+user.role
        let userCriypt = cryptoC.aesEncrypt(user_code);
        // 将数据保存再cookie内
        res.cookie('userIfo',userCriypt,{maxAge:7*24*60*60*1000,httpOnly: true});
        // res.session('userIfo',userCriypt);
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
    // console.log('show:',res.locals.userIfo);
    if(res.locals.isLogin){
      res.redirect('/admin/clue/list');
      return
    }
    res.render('admin/login')
    return
  },
  // 跟踪列表 end 



  // 退出登录
  
  loginOut: function(req,res,next){
    // req.session.destroy((err)=>{
    //   if(err){
    //     res.json({
    //       code:2,
    //       message:'退出失败！'
    //     })
    //   }

      res.clearCookie(userIfo);
      res.redirect('/admin/login');

    // })
  }

  // 退出登录  end
}

module.exports = adminController;