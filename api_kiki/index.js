//express initialization
const { request, response } = require("express")
const express = require("express")
const app = express()
const URI = '/api/'
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
app.post('/api/create', (req, res) => {
    console.log(req.body)
    // db.insert(req.body)
    // res.send(req.body)
})

//vidéo à 20 minutes 
//READ
app.get('/api/perso', (req, res) => {
    db.find({}, (err, docs) => {
        if (err) console.log(err)

        res.send(docs)
     })
})
//UPDATE
app.patch('/api/perso/:id', (req, res) => {
    db.update({ _id: req.params.id}, req.body)
    res.send(req.body)
})

// DELETE
app.delete('/api/perso/:id', (req, res) => {
    db.remove({ _id: req.params.id})
})

//running server
app.listen(PORT, () => {
    console.log(`Server is running on ${HOST}:${PORT}`)
})






