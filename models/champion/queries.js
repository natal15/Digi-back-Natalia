const { sql } = require('slonik')

// Primer end point, para seleccionar los champions y su evolución previa
const all = () => sql.unsafe`
   
        SELECT digimons_rookie.name, digimons_champion.name
        FROM digimons_rookie
        JOIN digimons_champion ON digimons_rookie.digimons_champion_id = digimons_champion.id
        `

const one = (name) => sql.unsafe`
   
        SELECT name, level
        FROM digimons_champion
        WHERE name LIKE ${name}
        `



module.exports = {
    all,
    one,
            
}

