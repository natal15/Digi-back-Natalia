const { getRookie } = require('./queries')

// 
const showRookie = (db) => async () => {
    try {

        const response = await db.query(getRookie())  
        return {
            ok: true,
            response: response.rows
        }
    } catch(error) {
        return {
            ok: false,
            message: error.message,
        }
    }
}

module.exports = {
    showRookie,
}