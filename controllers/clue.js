const Clue = require ('./../models/clue.js');
const User = require ('./../models/user.js');
const Track = require ('./../models/track.js');
const { dateStyle } = require ('./../util/date.js');
const Url = require('url');


const indexController = {

  // 落地页跟踪数据添加
  /*
   * 验证
   * 电话，密码不能为空
   * 电话满足11位
   * 
   */
  clueInsert:async function(req,res,next){
    // console.log(req);
    let tel= req.body.tel;
    let name = req.body.username;
    let urls = req.body.url;
    let source = Url.parse(urls,true).query.utm;
    let time = (new Date()).valueOf();
    // console.log(tel);

    if (!tel || !name){
      res.json({
        code:0,
        message:'内容信息为空！'
      })
      return
    }

    var telCheck = /^[1][34578]\d{9}$/;
    if(tel.length !== 11 || !(telCheck.test(tel))){
      res.json({
        code:0,
        message:'账号应为11位手机号！'
      })
      return
    }

    try{

      const clueUser = await Clue.insert({name,tel,source,time});
      res.json({
        code:200,
        data:clueUser
      })
      return
    }catch(e){
      console.log(e);
      res.json({
        code:0,
        message:'内部错误！'
      })
    }
  },
  // 跟踪数据添加 end


  // 跟踪列表页面数据展示
  
  clueShow:async function(req,res,next){
    // const role = res.locals.userIfo.role
    // const name = res.locals.userIfo.name;
    // console.log('name',name);

    try{
          let users = await Clue.all();
          // console.log('users',users);

          // 根据最近创建排序
          const user = users.sort((a,b)=>{
            return b.time-a.time;
          })
          // console.log('user',user);

          res.locals.clueUser = user.map((data)=>{
            data.time = dateStyle(data.time);
            return data;
          });

      // console.log('clueUser:',res.locals);
      res.render('admin/clueList',res.lcoals);
      return

    }catch(e){
      console.log('show',e);
      res.locals.error = e;
      res.render('error',res.lcoals);
    }
    next();
  },

  // 跟踪数据展示 end
  


  // 跟踪编辑页面数据展示
  clueEdit:async function(req,res,next){
    let id = req.params.id;
    // console.log('edit',id);

    try{

      // 跟踪页面用户信息展示
      const clueIfo = await Clue.find({id});
      // console.log('clueIfo',clueIfo);

      // 将日期格式转化为 yyyy-mm-dd hh：mm：ss
      res.locals.clueUser = clueIfo.map((data) => {
        data.time = dateStyle(data.time);
        return data;
      });


      // 跟踪页面销售选择项
      const user_role = await User.find({role:'销售'});   
      // console.log('userid',user_role);
      res.locals.userSale = user_role;


      // 跟踪进度展示
      const user_tel = clueIfo[0].tel;
      // console.log('user_tel',{user_tel});

      const trackIfos = await Track.find({user_tel});
      // console.log('trackifo',trackIfo);

      const trackIfo = trackIfos.sort((a,b)=>{
        return b.time - a.time;
      });

      res.locals.track = trackIfo.map((data)=>{
        data.time = dateStyle(data.time);
        return data;
      });

      // console.log('track',res.locals);
      res.render('admin/clueTrack',res.locals);
      return
    }catch(e){
      console.log(e);
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },
  // 跟踪页面的编辑 end


  // 线索跟踪页面编辑后数据的更新

  clueUpdate:async function(req,res,next){
    let id = req.body.id;
    // console.log('clueUpdate',id);
    let status = req.body.status;
    let user_id = req.body.user_id;
    let remark = req.body.remark;
    let content = req.body.content;
    let time = (new Date()).valueOf();

    try{
      const clueUser = await Clue.update(id,{status,user_id,remark,time});
      res.json({
        code:200,
        data:clueUser
      })
      return
    }catch(e){
      console.log('clueUpdate',e);
      res.json({
        code:0,
        message:'内部错误！'
      })
    }
  },

  // 线索跟踪页面编辑后数据的跟新  end

  // 线索跟踪情况更新

  trackUpdate:async function(req,res,next){
    let user_tel = req.body.tel;
    console.log('track',user_tel);
    let content = req.body.content;
    let time = (new Date()).valueOf();

    try{
      const trackContent = await Track.insert({user_tel,content,time})
      res.json({
        code:200,
        data: trackContent
      })
      return
    }catch(e){
      console.log(e)
      res.json({
        code:0,
        message:'内部错误！'
      })
    }
  },

  // 线索跟踪情况更新 end

  // 线索跟踪删除事件

  del:async function(req,res,next){
    const id = req.body.id;
    try{
     const delIfo = await Track.del(id);
     // console.log('del',delIfo);
      res.json({
        code:200,
        message:'删除成功！'
      })
    }catch(e){
      console.log('delerr',e);
      res.json({
        code:0,
        message:'内部错误！'
      })
    }
  },

  // 线索跟踪删除事件  end

  // 跟踪列表页筛选功能

  selectFilter:async function(req,res,next){
    let status = req.body.status;
    console.log('status:',status);
    try{

      res.redirect('/admin/clue/list/:status');
      return
    }catch(e){
      console.log('selectE:',e);
      res.json({
        code:0,
        message:'内部错误！'
      })
    }
  },

  selected:async function(req,res,next){
    let status = req.query.id;
    console.log('selectedSta', status);

    try{

      const clueList = await Clue.find({status});
      console.log('select:',clueList);
      res.locals.clueListFilter = clueList.map((data)=>{
        data.time = dateStyle(data.time);
        return data;
      });
      console.log('select:',res.locals);
      res.redirect('admin/clueList', res.locals);

    }catch(e){
      console.log('selectedStaE',e);
      res.json({
        code:0,
        message:'内部错误'
      })
    }
  }

  // 跟踪列表页筛选功能  end
}

module.exports = indexController;