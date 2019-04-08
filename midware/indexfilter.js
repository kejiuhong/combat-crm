

const indexfilter = function (app){
  app.use(require('./initfilter.js'));
  app.use(require('./loginfilter.js'));
}

module.exports = indexfilter;