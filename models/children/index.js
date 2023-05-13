const { childEmb, chilDigi, kidEmblem } = require('./queries')

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

const getKid = (db) => async (byKid) => {
    
    try {

        const response = await db.query(kidEmblem(byKid))  
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
    getKid,
    
}