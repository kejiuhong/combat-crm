const back = {
  init:function(){
    this.bind()
  },
  // 移动端点击姓名显示下拉框
  bind:function(){
    $('.mobile-use').bind('click',()=>{
      console.log('showtime');
      $('.nav-botton-menu').css('display','inline-block');
    });

    // 点击退出按钮
    $('.logOut').bind('click',(req,res,next)=>{
      alert('comeback');
      alert(userIfo);
      window.location.href='admin/login';
      // 清楚cookie数据
      res.clearCookie('userIfo');
    });
  }
}

back.init();