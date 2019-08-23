module.exports = {
 extends: ['eslint:recommended'],
 parserOptions: {
   ecmaVersion: 6,
  },
 rules: {
  quotes: ['error', 'single', { avoidEscape: true }],
      'comma-dangle': ['error', 'always-multiline'],
 }, 
  env: {
    node: true,
  },
};
