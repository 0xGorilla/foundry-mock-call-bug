# Foundry mockCall bug?

### Description
It seems that the `mockCall` cheatcode doesn't actually work against a function that doesn't return any value.

In this repository you will find two tests:
* `testEat`: it doesn't pass, since the function that it mocks doesn't return any value
* `testDrink`: it does pass, since the function that it mocks return a value, in the case, a boolean

### How to run this repository

1. Install foundry if you haven't already
1. Install package dependencies: `npm install` or `yarn install`
1. Install foundry libraries: `git submodule update --init`
1. Run tests: `npm test` or `yarn test`