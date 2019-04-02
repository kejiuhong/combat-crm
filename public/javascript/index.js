
const Page = {
  // 初始化
  init: function() {
    this.bind();
  },
  // 按钮绑定事件
  bind: function() {
    $('.btn').bind('click',this.handleSubmit);
  },

  // 事件
  handleSubmit: function() {
    let name = $('.username').val();
    let tel = $('.tel').val();
    let time = new Date();
    if(!name || !tel){
      alert('请填写完成内容后再提交！');
      return
    }
  }
    
  $ajax({
    url:'',
    type:'POST',
    data:{name,tel,time},
    success:function(res){
      console.log(res);
    }
  })
  
}


Page.init();