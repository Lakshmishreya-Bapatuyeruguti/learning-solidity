// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 

contract Variables{
    // state Variables and 3 ways to assign values
    // way1 - during declaration
    uint  public age=10;
    uint public id;
    string  public name;
 
    // way2 - in constructor
    constructor() public{
        id=1;
    }
    // way3 - in function   
    function setName()  public{
        name="John Doe";
    }
    function identification() view  public returns(string memory){
        return name;
    }

    // local variables
    function students() pure public returns(uint,string memory){
        uint rollno=85;
        string memory studentName="MAX";
        return (rollno,studentName);
    }

    // Getter Functions
    function getAge() public view returns(uint){
        return age;
    }

    // Setter Function
    function setAge() public {
        age=21;
    }
    function setName(string memory newName) public{
        name=newName;
    }
}
