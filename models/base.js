// 公共的连接数据库基础文件

const knex = require('./../config.js');


 class Base {
  constructor(props){
    this.table = props
  }
  
  //选择全部
  all(){
    return knex(this.table).select()
  }

  // 查找相关项
  select(params){
    return knex(this.table).select().where(params)
  }

  // 创建插入/编辑
  insert(params){
    return knex(this.table).insert(params)
  }

  // 创建更新列表
  update(id,params){
    return knex(this.table).where('id','=',id ).update(params)
  }


   // 根据查询中指定的条件删除一行或多行
   del(id){
    return knex(this.table).where('id', '=', id).del() 
   }
}

 module.exports = Base;