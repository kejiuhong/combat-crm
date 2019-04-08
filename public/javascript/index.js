const page = {
  init: function(){
    this.bind();
  },


  bind:function(){
    $('.layout-btn').bind('click',this.SuccIfo);
  },


  SuccIfo:function(){

    let tel = $('.tel').val();
    let username =$('.username').val();
    console.log('ifo',username);
    if(!username || !tel){
      alert('信息未完成！')
    }

   $.ajax({
    url:'/api/index',
    type:'POST',
    data:{username,tel},

     beforeHandle:function(){
      $('.layout-btn').attr('disabled',true);
    },

    success:function(res){
      console.log('succ',res);
      if(res.code == 200){
        alert('提交成功！');
        window.location.href='/admin/clue/list';
      }else{
        alert(res.message);
      }
    },

    error:function(err){
      console.log('err',err);
    },

    complete:function(){
      $('.layout-btn').attr('disabled',false);
    }
   })
  }
}

page.init();