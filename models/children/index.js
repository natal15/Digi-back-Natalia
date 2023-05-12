const { childEmb, chilDigi } = require('./queries')

// 
const getEmblems = (db) => async () => {
    try {

        const response = await db.query(childEmb())  
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
const getDigi = (db) => async (emblem) => {
    
    try {

        const response = await db.query(chilDigi(emblem))  
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