const express = require('express');
const negativated = require("./data/");
const app = express();
const port = 7007;

app.get('/v1/negativated/:id', (req, res) => {
    res.send(JSON.stringify({
        "error": "API endpoint DEPRECATED -> not able to retrieve the wished data",
    }))
})

app.get('/v1/list-negativated', (req, res) => {
    const ListWithID = negativated.map((cv, i) => {
        cv["id"] = i + 1;
        return cv
    })
    res.send(JSON.stringify({
        "negativated": {...ListWithID}
    }))
})

app.listen(port, () => {
    console.log(`Legacy-api running at http://localhost:${port}`);
})
