const { all, one } = require('./queries')

// Primer end point, muestra los champion y su evolución previa
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

// segundo end point, muestra el digimon por params
const showOne = (db) => async (name) => {
    
    try {

        const response = await db.query(one(name))  
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
    showOne,
    
}