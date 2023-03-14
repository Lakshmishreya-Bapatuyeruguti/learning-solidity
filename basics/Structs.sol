// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 

contract Struct{
    // struct 
    struct Car{
        string name;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address=>Car[]) ownwerCars;

    // 3 ways to initialize

    function example()public {
        // Way1
      Car memory Toyota=  Car("Toyota",2000,msg.sender);
        // Way2
      Car memory Ferrari= Car({name:"Ferrari",year:1990,owner:msg.sender});
        // Way3
      Car memory tesla;
      tesla.name="Tesla";
      tesla.year=2015;
      tesla.owner=msg.sender;

      cars.push(Toyota);
      cars.push(Ferrari);
      cars.push(tesla);

      cars.push(Car("Suzuki", 2007,msg.sender));
    //   To get and update and delete  struct type variable
    Car storage _car=cars[0];
     delete _car.owner;
     delete cars[1];

     }
}