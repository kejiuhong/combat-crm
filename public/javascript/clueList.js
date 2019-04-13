// 跟踪列表 js  筛选功能

const Page = {
  init:function(){
    this.bind()
  },

  bind:function(){
    // $('.headerTh').bind('click',()=>{
    //   // console.log('change');
    //   $('.th-select').slideToggle();
    // });

    $('.th-select').bind('change',(e)=>{
      // console.log($('.selected').text());

      let status = $('.th-select').val();
      let statusArr = $('.status'); //表格内状态栏内容
      let trArr = $('tbody').children('tr'); //获取表格的行
      // console.log('status',statusArr);

      $('.selected').text(status);
      
      for(var i=0; i<statusArr.length; i++){

        let statusTh = statusArr.eq(i).text();
        // console.log('arr',statusTh);
        trArr.eq(i).css('display','table-row')

        // 如果表格中选项符合点击所获取数据，则显示，不符合的便隐藏
        if(status !== (statusArr.eq(i).text()) && status !== '状态'){
          // console.log(i);
          trArr.eq(i).css('display','none');
          
        }else if(status == '状态'){
          // console.log('status');
          trArr.eq(i).css('dispaly','table-row');
        }
      }

    })
  }
}

Page.init();