const { all } = require('./queries')

// 1.- Primer ejercicio y quinto ejercicio
const showAll = (db) => async () => {
    try {

        const response = await db.query(all())  
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
    showAll,
    
}