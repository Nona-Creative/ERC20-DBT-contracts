pragma solidity ^0.4.24;

import "../common/ERC20.sol";
import "../common/Managable.sol";


/**
 * @title Databit ERC20 token
 */
contract Databit is ERC20, Managable {

  string public constant name = "Databit";
  string public constant symbol = "DBT";
  uint8 public constant decimals = 10;

  function transfer(address _from, address _to, uint256 _value) external {
    _transfer(_from, _to, _value);
  }

  function mint(address _account, uint256 _amount) external managerOnly {
    _mint(_account, _amount);
  }
}
