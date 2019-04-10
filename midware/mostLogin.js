
const userMostLogin = {
  // 其它页面验证是否登录
  mostLogin:function(req,res,next){
    if(!res.locals.isLogin){
      res.redirect('/admin/login');
      return
    }
    next();
  },

  // 判断如果是销售，那么用户管理页面，编辑页面会显示403禁止访问页面
  roleFilter:function(req,res,next){
    let user = res.locals.userIfo;
    if(user.role == '销售'){
      res.writeHead(403);
      res.end('403 Forrbiden!');
      return
    }
    next();
  }
}

module.exports = userMostLogin;