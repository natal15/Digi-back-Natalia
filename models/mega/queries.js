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

module.exports = {
    showMega,
    allMega,
}        