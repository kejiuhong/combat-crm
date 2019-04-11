const back = {
  init:function(){
    this.bind()
  },
  
  bind:function(){
    // 移动端点击姓名显示下拉框
    $('.mobile-use').bind('click',()=>{
      console.log('showtime');
      $('.nav-botton-menu').slideToggle();
    });
    // 移动端点击姓名显示下拉框 end


    // 用户退出功能
    $('.loginOut').bind('click',()=>{
      console.log('quit');
      $.ajax({
        url:'/api/login/out',
        type:'GET',
        success:function(res){
          console.log(res);
        },
        error:function(err){
          console.log('outerr:',err);
        }
      })

    })
  }

}

back.init();