const nodemailer = require("nodemailer");
require("dotenv").config;

async function main(obj) {
  let testAccount = await nodemailer.createTestAccount();

  /* if we want to use ethereal for development we need to add host: "smtp.ethereal.email" and remove service */

  let transporter = nodemailer.createTransport({
    service: "gmail",
    host: "smtp.gmail.com",
    port: 587,
    secure: false, // true for 465, false for other ports
    auth: {
      user: process.env.EMAIL_USER,
      pass: process.env.EMAIL_PASS,
    },
  });

  let info = await transporter.sendMail({
    from: '"Digimon Emperador 🧛‍♂️" <foo@example.com>', // sender address
    to: obj.email, // list of receivers
    subject: "Register complete ✔", // Subject line
    text: "Estás dentro del mundo digital, mari Carmen", // plain text body
    html: "<b>Hola mapache 🦝, bienvenido a la D-terminal</b>", // html body
  });

}

module.exports = main;