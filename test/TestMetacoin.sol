pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/DollHair.sol";

contract TestMetacoin {

  function testInitialBalanceUsingDeployedContract() {
    DollHair meta = DollHair(DeployedAddresses.DollHair());

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 DollHair initially");
  }

  function testInitialBalanceWithNewDollHair() {
    DollHair meta = new DollHair();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 DollHair initially");
  }

}
