const queries = require('../../models/children')

module.exports = (db) => async (req, res, next) => {
   
    const emblem = req.params.id

    const dbRes = await queries.getEmblems(await db)(emblem)

    if(!dbRes.ok) return next({
        statusCode: 500,
        error: new Error('something went wrong!'),
    })

    res.status(200).json({
        success: true,
        data: dbRes.response,
    })
    
}