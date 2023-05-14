const { sql } = require('slonik')

const insertUser = (nickname, email, password) => sql.unsafe`
    INSERT INTO users (
        nickname, email, password
    ) VALUES (
        ${nickname}, ${email}, ${password}
    );
`

const selectByEmail = (email) => sql.unsafe`
    SELECT email, password
    FROM users
    WHERE email LIKE ${email};
`

module.exports = {
    insertUser,
    selectByEmail,
}
