const back = {
  init:function(){
    this.bind()
  },
  // 移动端点击姓名显示下拉框
  bind:function(){
    $('.mobile-use').bind('click',()=>{
      console.log('showtime');
      $('.nav-botton-menu').slideToggle();
    });

    // 点击退出按钮
    $('.logOut').bind('click',function(req,res,next){
      alert('你已成功退出！');
      res.locals.isLogin = false;
      res.locals.userIfo = {};
      res.cookie('userIfo',{});
      // window.location.href='/admin/login';
      
      // 清楚cookie数据
      return
    });
  }
}

back.init();