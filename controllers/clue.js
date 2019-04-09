const Clue = require ('./../models/clue.js');
const User = require ('./../models/user.js');
const { dateStyle } = require ('./../util/date.js');
const Url = require('url');


const indexController = {

  // 跟踪数据添加
  clueInsert:async function(req,res,next){
    // console.log(req);
    let tel= req.body.tel;
    let name = req.body.username;
    let urls = req.body.url;
    let source = Url.parse(urls,true).query.utm;
    let time = new Date();
    console.log(source);

    if (!tel || !name){
      res.json({
        code:0,
        message:'内容信息为空！'
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
    try{
      const users = await Clue.all();

      res.locals.clueUser = users.map((data)=>{
        data.time = dateStyle(data.time);
        return data;
      });
      console.log(res.locals);
      res.render('admin/clueList',res.lcoals);

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
    console.log(id);

    try{
      

    }catch(e){

    }
  }

}

module.exports = indexController;