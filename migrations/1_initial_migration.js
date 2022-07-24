const Migrations = artifacts.require("Migrations");
const Erc721 = artifacts.require("MinimalERC721");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Erc721,"Ethhack","ECC");
};
