const express = require('express');
const app = express();
const port = 3000;
const fs = require('fs');

const aeroportData = fs.readFileSync('aeroport.json', 'utf8');

app.get('/aeroport', (req, res) => {
    res.json(JSON.parse(aeroportData));
});

// Lancement du serveur
app.listen(port, () => {
    console.log(`Serveur API est sur http://localhost:${port}`);
});

// pour acceder a l'api : http://localhost:3000/aeroport