const router = require('express').Router()
const controllers = require('../controllers/mega')

module.exports = (db) => {
    router.get('/', controllers.getMega(db))



    return router
}