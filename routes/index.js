const router = require('express').Router()
const rookies = require('./rookies')
const children = require('./children')
const champion = require('./champion')
const mega = require('./mega')
const types = require('./types')
const authRoutes = require('./auth')

module.exports = (db) => {
    router.use('/rookies', rookies(db))
    router.use('/children', children(db))
    router.use('/champion', champion(db))
    router.use('/mega', mega(db))
    router.use('/types', types(db))
    router.use('/auth', authRoutes(db))

    return router
}