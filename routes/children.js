const router = require('express').Router()
const controllers = require('../controllers/children')

module.exports = (db) => {
    router.get('/:id', controllers.getEmblems(db))
    router.get('/', controllers.getDigi(db))



    return router
}