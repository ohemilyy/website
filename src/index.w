#!/usr/bin/env node

import express from "express";
import path from "path";
import getConfig from "./util/getConf.mod.w";
import { listening } from "./util/logger.mod.w";
import { capture } from "express-device";
const app = express();
const config = getConfig();

app.set("view engine", "ejs");
app.set("views", path.join(__dirname + `/templates/${config.template}`));
app.use(capture());
app.use("/", require(path.join(__dirname + `/templates/${config.template}/manifest.w`)));

app.listen(8669, function() {
    console.log(listening("Website is listening on port 8669"));
});