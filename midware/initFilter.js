// 给cookie的一个说明，作用于百度读取

module.exports = function (req, res, next) {
  res.locals.seo = {
    title: 'Combat CRM',
    keywords: 'crm',
    description: 'combat-crm'
  }

  next();
}