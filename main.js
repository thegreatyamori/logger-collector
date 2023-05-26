const express = require("express");
const cors = require("cors");
const { exec } = require('child_process');

const port = 3000;
const host = 'localhost';
const app = express();
app.use(cors());

app.get("/", (req, res) => {
    res.json({version: '0.0.1'});
});

app.get("/log", (req, res) => {
    const message = `[${new Date().toUTCString()}]: ${req.query.content}`;
    exec(`sh logger.sh "${message}"`, (error, stdout, _) => {
        if (error) {
            console.error(`exec error: ${error}`);
            return;
        }

        res.json({ log_message: stdout });
    });
});

app.listen(port, host, () => {
    console.log(`Server running on port ${port}`);
});
