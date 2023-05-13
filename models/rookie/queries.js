const { sql } = require('slonik')

// 
const getEvo = () => sql.unsafe`


        SELECT digimons_rookie.name AS rookie, digimons_champion.name AS champion,
        digimons_mega_champion.name AS mega
        FROM digimons_rookie
        JOIN digimons_champion ON digimons_rookie.digimons_champion_id = digimons_champion.id
        JOIN digimons_mega_champion ON digimons_champion.digimons_mega_champion_id = digimons_mega_champion.id
        `

module.exports = {
    getEvo,
}  