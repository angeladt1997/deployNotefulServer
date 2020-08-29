require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const {NODE_ENV} = require('./config');

const morganOption = NODE_ENV == "production" ? "tiny" : "common"

const notesRouter = require('./notes/notes-service');
const foldersRouter = require('./folders/folders-router');


const app = express();

app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());
app.use("api/folders", foldersRouter);

app.get("/", (req, res) => {
    res.send("What's up, bruh?");
});

app.use(function errorHandler (error, req, res, next) {
    let response;
    if (NODE_ENV === "production") {
        response = {error: {message: "Whatever is wrong, we did it. Try again later"}};
    } else {
        console.error(error);
        response = {message: error.message, error};
    }
    res.status(500).json(response);
});

app.use("/api/notes", notesRouter);

module.exports = app;