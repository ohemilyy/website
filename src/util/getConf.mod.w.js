#!/usr/bin/env node

import yml from "js-yaml";
import fs from "fs";
import path from "path";
/**
 * Get the configuration file and convert it from a YAML dump to a JSON object
 * @returns {Object} The JSON object translated from the YAML dump
 */
export default function() {
    try {
        const d = yml.load(fs.readFileSync(path.join(__dirname + "/../../config.yml"), "utf8"));
        return d;
    } catch (e) {
        throw new Error(e);
    };
};