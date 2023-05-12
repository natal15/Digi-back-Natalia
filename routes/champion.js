const router = require('express').Router()
const controllers = require('../controllers/champion')

module.exports = (db) => {
    router.get('/', controllers.getAll(db))
    router.get('/', controllers.getOne(db))



    return router
}