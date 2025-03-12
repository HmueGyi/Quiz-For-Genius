var timeInSecs;
var ticker;

function startTimer(secs) {
    timeInSecs = parseInt(secs);
    ticker = setInterval("tick()", 1000);
}

function tick() {
    var secs = timeInSecs;
    if (secs > 0) {
        timeInSecs--;
    }
    else {
        alert("Time Up")
        clearInterval(ticker);
        startTimer(60); // 20seconds
    }

    var mins = Math.floor(secs / 60);
    secs %= 60;
    var pretty = ((mins < 10) ? "0" : "") + mins + ":" + ((secs < 10) ? "0" : "") + secs;

    document.getElementById("countdown").innerHTML = pretty;
}

startTimer(60); //20secods

//Credits to Gulzaib from Pakistan