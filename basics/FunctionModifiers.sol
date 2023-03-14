// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 

contract FunctionModifiers{
      uint public n1=11;
    // Function modifier
    modifier greaterThan10(uint n){
        require(n>10, "Should be greater 10");
        _;
    }
    function Number1() public view greaterThan10(n1) returns(string memory) {
        string memory done="Done1";
      
        return  done;
    }
    function Number2() public  view greaterThan10(n1) returns(string memory) {
      string memory done2="Done2";
      
        return  done2;
    }
}