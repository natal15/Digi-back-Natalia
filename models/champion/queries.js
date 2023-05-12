const { sql } = require('slonik')

// Primer end point, para seleccionar todos los digimons champion
const all = () => sql.unsafe`
   
        SELECT * FROM digimons_champion
        `

module.exports = {
    all,
            
}