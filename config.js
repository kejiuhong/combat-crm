const knex = require('knex')({
  client: 'mysql',
  connenction: {
    host: '127.0.0.1',
    port: '3306'
    user: 'root',
    password: '',
    database: 'combat-crm'
  }
})