const { sql } = require('slonik')

// 
const showMega = (name, level) => sql.unsafe`


        INSERT INTO digimons_mega_champion
        (name, level)
        VALUES (${name}, ${level})
        `

const allMega = () => sql.unsafe`


        SELECT name, level
        FROM digimons_mega_champion
        `

const eliminateMega = (elim) => sql.unsafe`


        DELETE FROM digimons_mega_champion
        WHERE name = ${elim}
        `


module.exports = {
    showMega,
    allMega,
    eliminateMega,
}        