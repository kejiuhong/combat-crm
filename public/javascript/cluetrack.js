/* 
  线索跟踪页面 
*/

const Page = {
  init:function(){
    this.bind();
  },

  bind:function(){
    // 线索跟踪修改的保存
    $('.save').bind('click',this.handlSave);

    // 线索跟踪添加跟踪情况
    $('.add').bind('click',this.handlAdd);

    // 删除线索跟踪情况
    $('.delete').bind('click',this.del);
  },

// 线索跟踪修改的保存事件
  handlSave(e){
    console.log('ok');
    let id = $('.hidID').text();
    let status = $('.opStatus').val();
    let user_id = $('.opSale').val();
    let remark = $('.remark').val();
    console.log(status,user_id);

    $.ajax({
      url:'/api/clue/save',
      type:'POST',
      data:{id,status,user_id,remark},

      beforeHandle:function(){
        $('.save').attr('disable',true);
      },

      success:function(res){
        if(res.code == 200){
          alert('最新修改保存成功！')
        }else{
          alert(res.message);
        }
      },

      error:function(err){
        console.log(err);
      },

      complete:function(){
        $('.save').attr('disable',false);
      }
    })
  },
  // 线索跟踪修改的保存事件 end


  // 线索跟踪添加跟踪情况事件

  handlAdd:function(){
    let tel = $('.hidTel').text();
    // console.log(tel);
    let content = $('.trackContent').val();

    $.ajax({
      url:'/api/clue/add',
      type:'POST',
      data:{tel,content},

      beforeHandle:function(){
        $('.save').attr('disable',true);
      },

      success:function(res){
        if(res.code == 200){
          alert('最新跟踪添加成功！')
          console.log(res.data);
          window.location.reload();
        }else{
          alert(res.message);
        }
      },

      error:function(err){
        console.log(err);
      },

      complete:function(){
        $('.save').attr('disable',false);
      }
    })
  },

  // 线索跟踪添加跟踪情况事件 end


  // 删除线索跟踪情况事件

  del:function(e){
    console.log(e.target.id);
    let id = e.target.id;

    $.ajax({
      url:'/api/del/track',
      type:'GET',
      data:{id},

      success:function(res){
        if(res.code==200){
          alert(res.message);
          window.location.href='/admin/clue/track';
        }else{
          alert(res.message);
        }
      },

      errer:function(err){
        console.log(err);
      }
    })
  }

  // 删除线索跟踪情况事件 end
}

Page.init();