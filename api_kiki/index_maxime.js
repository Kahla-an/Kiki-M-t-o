import express from 'express'  

// INI MYSQL
const mysql = require("mysql")


// CONNECT MYSQL
const db = mysql.createConnection({
    host : "localhost",
    user : "maximemouysset_user",
    password : "maximemouysset"
})


db.connect(function(err){
    if (err) throw err;
    console.log("Connecté à la base de donnée MySQL !");
})


// INI EXPRESS
const app = express()

app.use(express.json())


const PORT = 3000
const HOST = 'localhost'



// API C.R.U.D

// Create
app.post('/api/perso', (req, res) => {
    console.log(req.body)
    db.insert(req.body)
    res.send(req.body)
})


// READ ALL
app.get('/api/perso', (req, res) => {
    db.find({}, (err, docs) => {
        if (err) console.log(err)

        res.send(docs)
     })
})


// UPDATE
app.patch('/api/perso/:id', (req, res) => {
    db.update({ _id: req.params.id}, req.body)
    res.send(req.body)
})


// DELETE
app.delete('/api/perso/:id', (req, res) => {
    db.remove({ _id: req.params.id})
})


//RUNNING
app.listen(PORT, () => {
    console.log(`le serveur est lancé sur le port : ${HOST}:${PORT}`)
})