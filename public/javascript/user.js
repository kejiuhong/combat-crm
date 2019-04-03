const Page={
  init: function(){
    this.bind();
  },

  bind: function(){
    $('.save').bind('click',this.handleSubmit);
  },

  handleSubmit: function(){
    let name = $('.username').val();
    let tel = $('.tel').val();
    let password = $('.password').val();
    let role = $('.role option:selected').text();

    if(!name || !tel || !password || !role){
      alert('请将信息添加全面！');
      return
    }
    // console.log('ok');
    // alert(role);
  

    $.ajax({
      type: 'POST',
      url: '/api/user',
      data: {name,tel,password,role},

      beforeSend: function(){
        $('.save').attr('disabled', true);//禁用加载按钮
      },

      success: function(data){
        console.log('js:',data);
        if(data.code === 200){
          alert('保存成功');
          location.href='admin/userList';//回到列表页
        }else{
          alert(data.message);
        }
      },

      error: function(err){
        console.log('err:',err);
      },
      
      complete: function(){
        $('.save').attr('disabled', false);
      }
    })
  }
}

Page.init();