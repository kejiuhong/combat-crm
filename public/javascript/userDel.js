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

    if(window.confirm('确定要删除吗？')){

      console.log(e.target.id);
      let id = e.target.id;

      $.ajax({
        url:'/api/del/user',
        type:'POST',
        data:{id},

        success:function(res){
          if(res.code==200){
            // alert(res.message);
            window.location.reload(); //刷新页面
          }else{
            alert(res.message);
          }
        },

        errer:function(err){
          console.log(err);
        }
      })
    }else{
      alert('删除失败！');
    }
  }
}

Del.init();