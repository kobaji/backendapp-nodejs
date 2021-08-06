const express = require('express');
const app = express();
const PORT = 3000;
const HOST = '0.0.0.0'

app.get('/healthcheck', function(req, res){
    res.status(200).send('Hello World! CloudNative Days CI/CD HandsOn');
});

app.listen(PORT,HOST);