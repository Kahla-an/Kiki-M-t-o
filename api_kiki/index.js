
//express initialization
const express = require("express")
const app = express()
app.use(express.json())

//mysql initialization
const mysql = require("mysql")


//Database
const DB = mysql.createConnection({
    host :"localhost",
    user: "cyril_user",
    password: "cyril_user"

})
DB.connect(function(err){
    if(err){
        console.error('error connecting: '+ err.stack)
        return; 
    } else {console.log("MySQL connected")}
    
})



//basics
const PORT = 8000
const HOST = 'localhost'

//------------------------------------- CRUD --------------------------------------\\

//CREATE









//running server
app.listen(PORT, () => {
    console.log(`Server is running on ${HOST}:${PORT}`)
})






