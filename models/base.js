// 公共的连接数据库基础文件

const knex = require('./../config.js');


 class baseMysql {
  constructor(props){
    this.table = props
  }
  
  // 创建查询
  select(params){
    return knex(this.table).select().where(params)
  }

  // 创建插入查询
  insert(params){
    return knex(this.table).insert(params);
  }

  // 创建更新查询
  update(id,params){
    return knex(this.table).where('id','=',id ).update(params);
  }


 // 根据查询中指定的条件删除一行或多行
 del(id){
  return knex(this.table).where('id', '=', id).del();
 }

 module.exports = baseMysql;