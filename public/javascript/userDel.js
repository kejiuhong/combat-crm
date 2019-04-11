/*
* 管理员删除销售页面
*/

const Del = {
  init:function(){
    this.bind();
  },

  bind:function(){
    // 删除销售
    $('.delete').bind('click',this.del);
  },

  del:function(e){
    console.log(e.target.id);
    let id = e.target.id;

    $.ajax({
      url:'/api/del/user',
      type:'POST',
      data:{id},

      success:function(res){
        if(res.code==200){
          alert(res.message);
          window.location.reload();
        }else{
          alert(res.message);
        }
      },

      errer:function(err){
        console.log(err);
      }
    })
  }
}

Del.init();