const express = require('express');

const app = express();

const { Pool } = require('pg');

const pool = new Pool({
    user: 'postgres',
    password: 'mysecretpassword',
    host: 'localhost',
    port: 5432,
});

app.get('/api', (req, res) => {
    res.json({ message: 'Hello, World!' });
});

app.get('/deltagere-json', async (req, res) => {
    const result = await pool.query('SELECT * FROM users');
    res.json(result.rows);
});

app.get('/bilmerker-json', async (req, res) => {
    const result = await pool.query('SELECT * FROM bilmerker');
    res.json(result.rows);
});

app.get('/skuespillere-og-filmer.json', async (req, res) => {
    const result = await pool.query('SELECT DISTINCT tittel, navn FROM filmer, skuespillere')
    res.json(result.rows);
})


app.use(express.static('public'));


app.get('/deltagere-1', (req, res) => {
    res.send('Jonas, Kristian, Herman, Martin, Aleksander ');
});

app.get('/deltagere-2', async (req, res) => {

    const result = await pool.query('SELECT * FROM users');

    let html = "<h1>Deltagere</h1>"
    html += "<ul>"

    for( const row of result.rows ) {
        html += "<li>" + row.name + "</li>"
    }

    html += "</ul>"
    res.send(html);
});

app.listen(3000, () => {
    console.log('Server listening on port 3000');
});