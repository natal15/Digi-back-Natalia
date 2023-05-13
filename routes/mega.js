const router = require('express').Router()
const controllers = require('../controllers/mega')

module.exports = (db) => {
    router.post('/', controllers.postMega(db))
    router.get('/', controllers.getMega(db))



    return router
}