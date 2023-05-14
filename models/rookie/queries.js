const { sql } = require('slonik')

// Selecciona el nombre del niño elegido y su digimon en todas las evoluciones
const getEvo = () => sql.unsafe`


        SELECT chosen_children.child, digimons_rookie.rookie, digimons_champion.champion,
        digimons_mega_champion.mega
        FROM digimons_rookie
        JOIN chosen_children ON chosen_children.digimons_rookie_id = digimons_rookie.id
        JOIN digimons_champion ON digimons_rookie.digimons_champion_id = digimons_champion.id
        JOIN digimons_mega_champion ON digimons_champion.digimons_mega_champion_id = digimons_mega_champion.id
        `


module.exports = {
    getEvo,
}  