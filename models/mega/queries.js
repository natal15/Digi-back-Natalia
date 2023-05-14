const { sql } = require('slonik')

//Inserta un nuevo digimon mega 
const showMega = (mega, level) => sql.unsafe`


        INSERT INTO digimons_mega_champion
        (mega, level)
        VALUES (${mega}, ${level})
        `
// Deja ver todos los digimons mega
const allMega = () => sql.unsafe`


        SELECT mega, level
        FROM digimons_mega_champion
        `

//Elimina un digimon mega        
const eliminateMega = (elim) => sql.unsafe`


        DELETE FROM digimons_mega_champion
        WHERE mega = ${elim}
        `


module.exports = {
    showMega,
    allMega,
    eliminateMega,
}        