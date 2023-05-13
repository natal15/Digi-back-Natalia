const queries = require('../../models/children')

module.exports = (db) => async (req, res, next) => {
   
    const byKid = req.params.id

    const dbRes = await queries.getKid(await db)(byKid)

    if(!dbRes.ok) return next({
        statusCode: 500,
        error: new Error('something went wrong!'),
    })

    res.status(200).json({
        success: true,
        response: dbRes.response,
    })
    
}