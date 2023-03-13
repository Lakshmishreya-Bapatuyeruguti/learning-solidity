// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 

contract Errors{
    // Require
    function testRequire(uint n) public pure {
     require(n>10, "should be greater than 10");
    }
    // Revert
    function testRevert(uint n) public pure{
     if(n<10){
         revert("SHOULD BE GREATER THAN 10");
     }
    }
    // Assert
     function testAssert(uint n) public pure{
    
         assert(n>10);
     }
    //  Custom Errors- works with revert only
    error MyError(address caller);
     function testCustom(uint n) public view{
     if(n<10){
         revert MyError(msg.sender);
     }
    }
}