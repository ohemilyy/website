import chalk from "chalk";


function init(message) {
    return `${chalk["blue"].bold("INIT")} ${message}`;
};

function error(message) {
    return `${chalk["red"].bold("ERR")} ${message}`;
};

function listening(message) {
    return `${chalk["blue"].bold("INIT")} ${chalk["magenta"].bold("LISTENING")} ${message}`;
};

export { init, error, listening };