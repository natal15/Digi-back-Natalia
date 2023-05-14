const { sql } = require('slonik')

// Muestra los niños elegidos según su emblema
const childEmb = (byEmblem) => sql.unsafe`


        SELECT chosen_children.child, chosen_children.description, emblems.name AS emblem
        FROM chosen_children
        JOIN children_emblems ON chosen_children.id = children_emblems.chosen_children_id
        JOIN emblems ON emblems.id = children_emblems.emblems_id
        WHERE emblems.name = ${byEmblem}
        `
        
// Selecciona a los niños elegidos y sus digimons rookie
const chilDigi = () => sql.unsafe`
   
        
        SELECT chosen_children.child, digimons_rookie.rookie AS digimon
        FROM chosen_children
        JOIN digimons_rookie ON digimons_rookie.id = chosen_children.digimons_rookie_id
        `

// Aparece el niño elegido y su digimon con un array de los emblemas
const kidEmblem = (byKid) => sql.unsafe`


        SELECT chosen_children.child, chosen_children.description, array_agg(emblems.name) AS emblem,
        digimons_rookie.rookie AS digimon
        FROM chosen_children
        JOIN children_emblems ON chosen_children.id = children_emblems.chosen_children_id
        JOIN emblems ON emblems.id = children_emblems.emblems_id
        JOIN digimons_rookie ON chosen_children.digimons_rookie_id = digimons_rookie.id
        WHERE chosen_children.child = ${byKid}
        GROUP BY chosen_children.child, chosen_children.description, digimons_rookie.rookie
        `        


module.exports = {
    childEmb,
    chilDigi,
    kidEmblem,
            
}