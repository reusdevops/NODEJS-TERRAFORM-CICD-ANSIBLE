const express = require('express')
const app = express()
const PORT = 3000
app.get('', (req, res) => {
    return res.status(200).json({
        path: '/',
        message: "success"
    })
})



app.listen(PORT, ()=> {
    console.log(`server is listening on port ${PORT}`)
})