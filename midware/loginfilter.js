// 将cookie内容解密


const cryptoC= require('./../util/encrypt.js');

module.exports = function(req,res,next){
  res.locals.isLogin = false;
  res.locals.userIfo = {};

  let user_code = req.cookies.userIfo;
  //console.log('cookies',user_code);
  

  // 判断cookie是否存在
  if(user_code){
    // 如果存在对它解密
    // console.log('have:',user_code);
    user = cryptoC.aesDecrypt(user_code);
    // console.log(user);
    userArr = user.split('\t');
    // console.log('userArr');
    let tel = userArr[0];
    let password = userArr[1];
    let name = userArr[2];
    let role = userArr[3];
    // 为了防止删改，再调用一次用户模型进行登录校验
    res.locals.isLogin = true;
    res.locals.userIfo ={tel,password,name,role};
    console.log('cookies',res.locals);
    return

  }
  next();
}