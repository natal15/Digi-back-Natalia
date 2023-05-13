const router = require('express').Router()
const rookie = require('./rookie')
const children = require('./children')
const champion = require('./champion')
const mega = require('./mega')
const authRoutes = require('./auth')

module.exports = (db) => {
    router.use('/rookie', rookie(db))
    router.use('/children', children(db))
    router.use('/champion', champion(db))
    router.use('/mega', mega(db))
    router.use('/auth', authRoutes(db))

    return router
}