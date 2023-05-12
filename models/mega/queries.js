const { sql } = require('slonik')

// 
const showMega = () => sql.unsafe`


        SELECT chosen_children.name, chosen_children.description, emblems.name AS emblem
        FROM chosen_children
        JOIN children_emblems ON chosen_children.id = children_emblems.chosen_children_id
        JOIN emblems ON emblems.id = children_emblems.emblems_id
        WHERE emblems.name = 'brave'
        `

module.exports = {
    showMega,
}        