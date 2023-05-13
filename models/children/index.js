const { childEmb, chilDigi } = require('./queries')

// 
const getEmblems = (db) => async (byEmblem) => {
    try {
        const response = await db.query(childEmb(byEmblem))  
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

// 
const getDigi = (db) => async () => {
    
    try {

        const response = await db.query(chilDigi())  
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
    getEmblems,
    getDigi,
    
}