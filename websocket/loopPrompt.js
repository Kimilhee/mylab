'use strict';

var promptly = require('promptly');

var reqCallback;

var reqJsons;
function reloadJson() {
  delete require.cache[require.resolve('./reqJsons.json')];
  reqJsons = require('./reqJsons.json');
  // console.log('Json reloaded!:');
}

var lastVal = 'cq';

function promptLoop (jsonId) {
  var reqCmd;
  console.log('@jsonId=', jsonId);
  switch (jsonId) {
    case 'q':   // 종료
      return jsonId; // Error 없이 return 하여 종료하게 한다.
    case 'l':   // 라인 띄우기
      console.log('\n\n\n\n\n');
      break;
    default:    // 마지막 명령 다시 실행 (최초는 default lastVal인 'cq')
      if (jsonId === '@LastInput') {  // 아무것도 입력하지 않을 때는 마지막 입력했던 것을 재사용함.
        jsonId = lastVal;
      }
      lastVal = jsonId;
      reloadJson();
      
      reqCmd = reqJsons[jsonId]
      console.log('reqCmd is:', reqCmd);
        
      if (reqCmd && reqCallback) {
        reqCallback(reqCmd);
      }
  }
  
  throw new Error('input');
};

exports.setJsonCallback = function(callback) {
  reqCallback = callback;
}

exports.run = function() {
  promptly.prompt('json id: ', { validator: promptLoop, default: '@LastInput' }, function () {
    console.log('Bye!');
    process.exit();
  });
}
