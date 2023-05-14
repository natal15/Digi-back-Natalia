const { showMega, allMega, eliminateMega } = require('./queries')

// 
const postMega = (db) => async (mega) => {
    try {

        const response = await db.query(showMega(mega.name, mega.level))  
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

const findMega = (db) => async () => {
    try {

        const response = await db.query(allMega())  
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

const eraseMega = (db) => async (elim) => {
    try {

        const response = await db.query(eliminateMega(elim))  
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
    postMega,
    findMega,
    eraseMega,
}