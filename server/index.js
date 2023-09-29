// IMPORTS FROM PACKAGES
const express = require("express");
const mongoose = require("mongoose");

// IMPORTS FROM FILES
const authRouter = require("./routes/auth");

// INITIALIZATION (INIT)
const PORT = 3000;
const app = express();
const DB = "mongodb://localhost:27017/Amazon_Clone";

// MIDDLEWARE
app.use(express.json());
app.use(authRouter);

// CONNECTIONS
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connections  successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0",function () {
  console.log(`connected at port ${PORT}`);
});

//creating an API
// app.get('/', (req, res)=> {
//     res.json({ name:  "Ninad More"})
// })
// app.get('/hello-world', (req, res)=>{
//     // res.send('hello world');
//     res.json({hi: "hello world"});
// })
// get,put,delete,update - CRUD Operation

// shift+alt+f
