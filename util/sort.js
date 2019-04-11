const sortData = {

  // 升序排序 按照事件先后排序
  ascending:function(a,b){
    return a-b;
  },

  // 降序排序
  decending:function(a,b){
    return b-a;
  }

}

module.exports = sortData;