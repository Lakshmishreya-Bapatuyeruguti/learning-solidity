// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 

contract Mapping{
    // Mapping
    mapping (address=>uint) public balances;
    // nested mapping
    mapping (address=>mapping(address=>bool)) public isFriend;

function addAndCheck() public {
    balances[msg.sender]=100;
    uint availBal  = balances[msg.sender];
    isFriend[msg.sender][address(this)]=true;
    availBal++;
    delete balances[msg.sender];
}


}