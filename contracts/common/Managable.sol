pragma solidity ^0.4.24;


/**
 * @title Managable
 */
contract Managable {

  address _manager;

  modifier managerOnly() {
    require(msg.sender == _manager, "Sender must be manager");
    _;
  }

  constructor() public {
    _manager = msg.sender;
  }
}
