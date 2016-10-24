"use strict";

const SerialPort = require("serialport");

const port = new SerialPort("/dev/ttyUSB0", {
    baudRate: 9600,
    parser: SerialPort.parsers.readline('\n')
});

port.on('open', function () {
    console.log("Port was opened.")
});

port.on('data', function (data) {
	console.log(data)
});
