// 其它页面验证是否登录
const userMostLogin = {
  mostLogin:function(req,res,next){
    if(res.locals.isLogin){
      res.redirect('admin/login');
      return
    }
  next();
  }
}

module.exports = userMostLogin;