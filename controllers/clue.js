const Clue = require ('./../models/clue.js');



const indexController = {

  clueInsert:async function(req,res,next){
    let tel= req.body.req;
    let name = req.body.username;
    // let source = req.params.utm;
    let time = new Date();
    console.log(name);

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
  }


}

module.exports = indexController;