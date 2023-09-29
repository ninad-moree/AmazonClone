console.log("Hello World");

// similar to import in flutter
const express = require('express'); 

const PORT = 3000;

const app = express()

//creating an API
app.listen(PORT,"0.0.0.0",  function(){
    console.log(`connected at port ${PORT}`);
})