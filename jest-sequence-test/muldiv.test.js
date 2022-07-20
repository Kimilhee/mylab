// import { mul, div } from './calc';
const { log, sleep, inc } = require('./util')
const { mul, div } = require('./muldiv')

test('multiply 1 * 2 to equal 2', async () => {
  log('start mul');
  inc()
  await sleep(1000)
  expect(mul(1, 2)).toBe(2);
  log('end mul');
});

test('subtract 2 - 1 to equal 1', async () => {
  log('start div');
  inc()
  await sleep(1000)
  expect(div(2, 1)).toBe(2);
  log('end div');
});
