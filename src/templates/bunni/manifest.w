#!/usr/bin/env node

import express from "express";
import path from "path";
import getConfig from "../../util/getConf.mod.w";
import { Client } from "discord.js";
import { init } from "../../util/logger.mod.w";
const client = new Client();
const configuration = getConfig();
let status = "#747F8D";
let pfp = "/assets/images/kylar2.png";
let spotify = "NONE";
let spotifySong = "nothing";
// Webserver

const app = express.Router();

app.use("/assets", express.static(path.join(__dirname + `/assets`)));

app.get("/", function(req, res, next) {
    if (req.device.type == "phone") return res.render("mobile");
    res.render("index");
});

app.get("/email", function(req, res, next) {
    res.sendFile(path.join(__dirname + "/assets/static/sendToEmail.html"));
});

module.exports = app;