const router = require('express').Router()
const controllers = require('../controllers/rookie')

module.exports = (db) => {
    router.get('/', controllers.getRookie(db))



    return router
}