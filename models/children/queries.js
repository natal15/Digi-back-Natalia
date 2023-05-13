const { sql } = require('slonik')

// 
const childEmb = (byEmblem) => sql.unsafe`


        SELECT chosen_children.name, chosen_children.description, emblems.name AS emblem
        FROM chosen_children
        JOIN children_emblems ON chosen_children.id = children_emblems.chosen_children_id
        JOIN emblems ON emblems.id = children_emblems.emblems_id
        WHERE emblems.name = ${byEmblem}
        `
        

const chilDigi = () => sql.unsafe`
   
        
        SELECT chosen_children.name, digimons_rookie.name AS digimon
        FROM chosen_children
        JOIN digimons_rookie ON digimons_rookie.id = chosen_children.digimons_rookie_id
        `


module.exports = {
    childEmb,
    chilDigi,
            
}