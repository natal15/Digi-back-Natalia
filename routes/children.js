const router = require('express').Router()
const controllers = require('../controllers/children')

module.exports = (db) => {
    router.get('/', controllers.getEmblems(db))
    router.get('/digi', controllers.getDigi(db))
    router.get('/kid/:id', controllers.getKid(db))



    return router
}