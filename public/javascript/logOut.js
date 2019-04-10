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

  }

}

back.init();