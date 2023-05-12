const queries = require('../../models/champion')

module.exports = (db) => async (req, res, next) => {
   
    const name = req.query.id

    const dbRes = await queries.showOne(await db)(name)

    if(!dbRes.ok) return next({
        statusCode: 500,
        error: new Error('something went wrong!'),
    })

    res.status(200).json({
        success: true,
        data: dbRes.response,
    })
    
}