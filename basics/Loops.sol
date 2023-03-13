// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 

contract Loops{
    // For Loop
    function sumTillN(uint n) public pure returns(uint){
        uint sum=0;
        for(uint i=0;i<=n;i++){
            sum+=i;
        }
        return sum;
    }
    // While Loop
    function factorial(uint n) public pure returns(uint){
        uint j=n;
        uint fact=1;
        while(j>=1){
            fact =fact*j;
            j--;
        }
        return fact;
    }
    // Break and continue
    function evensOnly(uint n)public pure returns(uint){
        uint sum=0;
        for(uint i=0;i<=n;i++){
            if(i%2!=0){
                continue;
            }
            if(i==10){
                break;
            }
            sum+=i;
        }
        return sum;
    }
}