const sum = require('../src/sum');
const R = require('ramda');

let nums = [33, 11, 5, 8, 2, 15];

test('adds 1 + 2 to equal 3', () => {
  expect(sum(1, 2)).toBe(3);
});
describe('Ramda', () => {
  it('add via sum is equal to R.add(1,2)', () => {
    expect(sum(1, 2)).toBe(R.add(1, 2));
  });
  test('with Math.min works on array', () => {
    expect(R.apply(Math.min, nums)).toBe(2);
  });
});
