var ConvertLib = artifacts.require("./ConvertLib.sol");
var DollHair = artifacts.require("./DollHair.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  // deployer.link(ConvertLib, DollHair);
  deployer.deploy(DollHair);
};
