const Clue = require ('./../models/clue.js');
const User = require ('./../models/user.js');
const Track = require ('./../models/track.js');
const { dateStyle } = require ('./../util/date.js');
const Url = require('url');


const indexController = {

  // 跟踪数据添加
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
    let time = new Date();
    // console.log(source);

    if (!tel || !name){
      res.json({
        code:0,
        message:'内容信息为空！'
      })
      return
    }

    var telCheck = /^[1][3,4,5,7,8][0-9]{9}$/;
    if(tel.length !== 11 && !telCheck.test(tel)){
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


  // 跟踪数据展示
  
  clueShow:async function(req,res,next){
    // const role = res.locals.userIfo.role
    // const name = res.locals.userIfo.name;
    // console.log('name',name);

    try{
      // 判断用户如果是管理员便全部显示，如果是销售，只显示自己所负责项目

          let users = await Clue.all();
          console.log('users',users);

          res.locals.clueUser = users.map((data)=>{
            data.time = dateStyle(data.time);
            return data;
          });

      console.log('clueUser:',res.locals);
      res.render('admin/clueList',res.lcoals);
      return

    }catch(e){
      console.log('show',e);
      res.locals.error = e;
      res.render('error',res.lcoals);
    }
  },

  // 跟踪数据展示 end
  


  // 跟踪页面的编辑
  clueEdit:async function(req,res,next){
    let id = req.params.id;
    // console.log('edit',id);

    try{
      // 跟踪页面用户信息
      const clueIfo = await Clue.find({id});
      // console.log('clueIfo',clueIfo);
      // 跟踪页面销售
      const user_role = await User.find({role:'销售'});   
      // console.log('userid',user_role);

      // 跟踪页面跟踪进度
      const user_tel = clueIfo[0].tel;
      console.log('user_tel',{user_tel});
      const trackIfo = await Track.find({user_tel});
      // console.log('trackifo',trackIfo);

      // 将日期格式转化为 yyyy-mm-dd hh：mm：ss
      res.locals.clueUser = clueIfo.map((data) => {
        data.time = dateStyle(data.time);
        return data;
      });
      res.locals.userSale = user_role;
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
    let time = new Date();

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
    let time = new Date();

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
     console.log('del',delIfo);
      res.json({
        code:0,
        message:'删除成功！'
      })
    }catch(e){
      console.log('delerr',e);
      res.json({
        code:0,
        message:'内部错误！'
      })
    }
  }

  // 线索跟踪删除事件  end
}

module.exports = indexController;