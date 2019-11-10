pragma solidity ^0.5.8;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract DappsToken is ERC20, ERC20Detailed {
    string private name_ = "DappsToken";
    string private symbol_ = "DTKN";
    uint8 private decimals_ = 18;

    constructor(uint256 initialSupply) ERC20Detailed(name_, symbol_, decimals_) public {
        _mint(msg.sender, initialSupply);
    }
}