const sleep = (time) => new Promise(resolve => setTimeout(resolve, time))

function log(...args) {
  console.log(...args, new Date())
}

let incNum = 0
function inc() {
  incNum += 1
  log('incNum:' + incNum)
}

module.exports = {
  sleep,
  log,
  inc
}