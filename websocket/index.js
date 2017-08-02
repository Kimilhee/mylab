'use strict';

var _ = require('lodash');
// var WebScoket = require('ws');

var WS_URL = 'wss://ap1.loriot.io/app?token=vnoCiwAAAA1hcDEubG9yaW90Lmlv30yXFpclZXc30o65azko6Q==';
var WebSocket = require('faye-websocket');
var ws = new WebSocket.Client(WS_URL);

var loopPrompt = require('./loopPrompt');

loopPrompt.setJsonCallback(function(reqJson) {
  console.log('send reqJson=', reqJson);
  ws.send(JSON.stringify(reqJson));
});

loopPrompt.run();
 
ws.on('open', function(event) {
  console.log('\n WebSocket opened!');
});
 
ws.on('message', function(event) {
  console.log('\nFrom message:', event.data);
});
 
ws.on('close', function(event) {
  console.log('\nclosed.', event.code, event.reason);
  ws = null;
});

/*

// loriot message format

{
  "cmd": "rx",
  "EUI": "4786E6ED0053004B",
  "ts": 1494817168670,
  "fcnt": 44,
  "port": 8,
  "ack": false,
  "data": "01006c5f1e00ffffc7"
}

*/
