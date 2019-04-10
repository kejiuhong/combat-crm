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
  }
}

back.init();