const queries = require('../../models/rookie')

module.exports = (db) => async (req, res, next) => {
   
    const dbRes = await queries.showRookie(await db)()

    if(!dbRes.ok) return next({
        statusCode: 500,
        error: new Error('something went wrong!'),
    })

    res.status(200).json({
        success: true,
        response: dbRes.response,
    })
    
}