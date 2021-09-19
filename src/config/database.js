require('dotenv').config();
const parse = require('pg-connection-string').parse;

const config = parse(process.env.DATABASE_URL);

module.exports = {
  development: {
    username: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    host: process.env.DATABASE_URL,
    dialect: 'mysql'
  },
  test: {
    username: 'root',
    password: null,
    database: 'database_test',
    host: '127.0.0.1',
    dialect: 'mysql'
  },
  production: {
    host: config.host,
    port: config.port,
    database: config.database,
    username: config.user,
    password: config.password,
    dialect: 'postgres',
    dialectOptions: {
      ssl: true
    }
  }
};
