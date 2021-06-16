function randomtext() {
    var randomtxt = [
        'bunni best bunny',
        'poggers',
        'bunny',
        'Best Bunny uwu',
        '#1 Bunny',
        'Emily'
    ];
    return randomtxt[Math.floor((Math.random() * 5.99))];
}

document.getElementById("spam").innerHTML = randomtext();