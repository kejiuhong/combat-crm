const dateStyle = date => {
  const year = date.getFullYear();//获得年
  const month = date.getMonth()+1;//获得月份
  const day =date.getDate();//获得日
  const hour = date.getHours();//获得时
  const minute = date.getMinutes();//获得分
  const second = date.getSeconds();//获得秒

  return [year,month,day].map(dateChange).join('/')+' '+[hour,minute,second].map(dateChange).join('-');
}


const dateChange = n => {
  n = n.toString() //转化为字符串
  return n[1] ? n : '0'+n //如果第二位数没有就在前面加上0
}

module.exports = { dateStyle }