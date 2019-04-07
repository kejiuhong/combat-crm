
const Page = {
  // 初始化
  init: function() {
    this.bind();
  },
  // 按钮绑定事件
  bind: function() {
    $('.login').bind('click',this.handleSubmit);
  },

  // 事件
  handleSubmit: function() {
    let tel = $('.tel').val();
    let password = $('.password').val();
    if(!password || !tel){
      alert('请填写完成内容后再提交！');
      return
    }

    $.ajax({
      url:'/api/user/login',
      type:'POST',
      data:{password,tel},
      success:function(data){
        if(data.code == 200){
          alert(data.message);
          window.location.href='/admin/clue/list';
        }else{
          alert(data.message);
        }
      },
      error:function(err){
        console.log(err)
      }
    })
  }
    
 
  
}


Page.init();