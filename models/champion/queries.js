const { sql } = require('slonik')

//para seleccionar los champions y su evolución previa
const all = () => sql.unsafe`
   
        SELECT digimons_rookie.rookie, digimons_champion.champion
        FROM digimons_rookie
        JOIN digimons_champion ON digimons_rookie.digimons_champion_id = digimons_champion.id
        `
//nombre de los digimons en todas sus evoluciones y su niño elegido.
const one = (selectCh) => sql.unsafe`
   
        SELECT chosen_children.child, digimons_rookie.rookie, digimons_champion.champion, digimons_mega_champion.mega
        FROM digimons_champion
        JOIN digimons_rookie ON digimons_rookie.digimons_champion_id = digimons_champion.id
        JOIN digimons_mega_champion ON digimons_champion.digimons_mega_champion_id = digimons_mega_champion.id
        JOIN chosen_children ON chosen_children.digimons_rookie_id = digimons_rookie.id
        WHERE digimons_champion.champion = ${selectCh}
        `



module.exports = {
    all,
    one,
            
}

