const MILLION = 1000000000;
function mul(a, b) {
  // for (let i = 0; i < MILLION * 2; i++) { }
  return a * b;
}

function div(a, b) {
  // for (let i = 0; i < MILLION * 1; i++) { }
  return a / b;
}

module.exports = {
  mul,
  div
}
