const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

const pool = require("../db");
const queries = require("./queries");

const getAllBooks = (req, res) => {
  pool.query(queries.getAllBooks, (error, results) => {
    if (error) {
      console.log(error);
      return res.status(500).send({ error: error });
    }

    res.status(200).json(results.rows)

  });
};

const getBooksByTagName = (req, res) => {
    let { tag } = req.body
    pool.query(queries.getBooksByTagName, [tag], (error, results) => {
      if (error) {
        console.log(error);
        return res.status(500).send({ error: error });
      }
  
      res.status(200).json(results.rows)
  
    });
  };


module.exports = {
    getAllBooks,
    getBooksByTagName
}