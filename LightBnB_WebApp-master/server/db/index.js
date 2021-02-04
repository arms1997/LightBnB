const { Pool, Query } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: 'Vagrant1!',
  host: 'localhost',
  port: 5432,
  database: 'lightbnb'
});

module.exports = {
  query: (text, params) => {
    return pool.query(text, params);
  }
}