// import { sum, sub } from './calc';
const { log, sleep, inc } = require('./util')
const { sum, sub } = require('./sumsub')

inc()
inc()
inc()

describe('sumsub test 2', () => {
  test('subtract2 3 - 1 to equal 1', async () => {
    log('start 333');
    inc()
    await sleep(3000)
    expect(sub(3, 1)).toBe(2);
    log('end 333');
  });
});

describe('sumsub test 1', () => {
  test('adds 1 + 2 to equal 3', async () => {
    log('start 111');
    inc()
    await sleep(500)
    expect(sum(1, 2)).toBe(3);
    log('end 111');
  });

  test('subtract 2 - 1 to equal 1', async () => {
    log('start 222');
    inc()
    await sleep(1000)
    expect(sub(2, 1)).toBe(1);
    log('end 222');
  });
});
