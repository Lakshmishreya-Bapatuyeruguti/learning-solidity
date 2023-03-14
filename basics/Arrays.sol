// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 

contract Arrays{
    // Fixed Sized Array
    uint [5] public nums=[1,2,3,4,5];
    uint public x=nums[1];
    
    // Dynamic Sized Array
    uint[] public nums2=[1,2,3];
     uint public len=nums2.length;
      uint public y=nums2[0];
    //   array operations
    function operations()public{
        
        delete nums2[1];
        nums2.push(4);
        nums2.pop();
        nums2.push(4);
       len=nums2.length;

    }
    // return array
    function returnArray() public view returns(uint[] memory){
        return nums2;
    }
     function returnArray2() public view returns(uint[5] memory){
        return nums;
    }

}