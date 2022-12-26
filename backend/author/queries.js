const getByName = "SELECT * FROM authors WHERE fullname = $1;"
const getAll = "SELECT * FROM authors ORDER BY fullname asc;"
const insert = "INSERT INTO authors (fullname) VALUES($1);"
const getById = "SELECT * FROM authors WHERE id = $1;"

module.exports = {
    getAll,
    insert,
    getByName,
    getById
}