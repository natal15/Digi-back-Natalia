const { getMega } = require('./queries')

// 
const showMega = (db) => async () => {
    try {

        const response = await db.query(getMega())  
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
    showMega,
}