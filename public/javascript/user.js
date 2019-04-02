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

  $.ajax({
    type: 'POST',
    url: '',
    data: {name,tel,password,role},
    beforeSend: function(){
      $('.save').attr('disabled',true);//禁用加载按钮
    }
    success: function(data){
      // console.log(res);
      if(data.code === 200){
        alert('保存成功')
      }else{
        alert(data.message);
      }
    },
    error: function(err){
      alert(err);
    }
  })
}

Page.init();