// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructsDemo {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping(address => Car[]) public carsByOwner;

    function someApplications() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({year: 1990, model: "Lamborghini", owner: msg.sender});
        Car memory tesla;

        tesla.model = "Tesla";
        tesla.year = 1983;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));

        Car storage _car = cars[0];
        _car.year = 1990;
        delete _car.owner;

        delete cars[1];
    }

    //this function is getting the details of the carsd
     function getCarDetails(uint index) external view returns (string memory, uint, address) {
        require(index < cars.length, "Invalid car index");
       
        return (car.model, car.year, car.owner);
    }
    //gets the total of the cars you add
     function getTotalCars() external view returns (uint) {
        return cars.length;
    }

    
}