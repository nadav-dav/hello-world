const express = require('express')
const app = express()

const port    = process.env.PORT || 80;
const message = process.env.MESSAGE || "Hello world!";
app.get('/', (req, res) => res.send(message));
app.listen(port, () => console.log(`Example app listening on port ${port}!`))