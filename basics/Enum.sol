// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 

contract Enum{
    enum Learning {start,inProgress,end,test}
    Learning public student;
    function update() public{
    student=Learning.end;
    }

}