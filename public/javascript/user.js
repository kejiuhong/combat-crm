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
  }

  $ajax({
    url: '/api/user',
    type: 'POST',
    data: {name,tel,password,role},
    success: function(res){
      // console.log(res);
      if(res.code === 200){
        alert('保存成功')
      }else{
        alert(res.message);
      }
    },
    error: function(err){
      alert(err);
    }
  })
}

Page.init();