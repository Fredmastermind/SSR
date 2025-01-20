const express = require('express');

const app = express();

app.get('/deltagere-1', (req, res) => {
    res.send('Jonas, Kristian, Herman, Martin ');
});

app.listen(3000, () => {
    console.log('Server listening on port 3000');
});