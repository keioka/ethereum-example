const MyToken = artifacts.require('./MyToken.sol') // What is file path?

module.exports = (deployer) => {
  let initialSupply = 50000e18;
  let maxSupply = 50000e18;
  deployer.deploy(MyToken, initialSupply, maxSupply, {
    gas: 2000000
  });
}
