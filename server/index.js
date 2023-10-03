// IMPORTS FROM PACKAGES
const express = require("express");
const mongoose = require("mongoose");

// IMPORTS FROM FILES
const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");

// INITIALIZATION (INIT)
const PORT = 3000;
const app = express();
const DB = "mongodb://localhost:27017/Amazon_Clone";
// const DB = "mongodb+srv://miyamaru:hori18@cluster0.j0aui0b.mongodb.net/?retryWrites=true&w=majority";

// MIDDLEWARE
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);

// CONNECTIONS
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connections  successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", function () {
  console.log(`connected at port ${PORT}`);
});
