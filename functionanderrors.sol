// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract Functionanderrors {
    address public owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Owner Called Funtion");
        _;
    }

    function setBalance(uint _balance) public onlyOwner {
        balance = _balance;
    }

    function assertExample() public view {
        assert(balance > 0);
    }

    function revertFunction(uint _value) public pure {
        if (_value == 0) {
            revert("Must be zero");
        }
    }
}
