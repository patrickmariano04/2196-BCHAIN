// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract{
  address public owner;
  uint256 public age;
  uint256 public hoursworked;
  uint256 public hourlyrate;
  uint256 public totalsalary;

  modifier onlyOwner(){ 
    require(msg.sender == owner, "not the owner");
  _;
  }
  
  modifier nonZero(uint256 _value){
    require(_value > 0, "not greater than zero");
    _;
  }
   constructor() {
        owner = msg.sender;
    }
  
  function setAge(uint256 _age)
  public onlyOwner {
    age = _age;
  }
  function setHrsWrk(uint256 _hoursworked)
  public onlyOwner nonZero(_hoursworked) {
    hoursworked = _hoursworked;
  }
   function setRate(uint256 _hourlyrate)
  public onlyOwner nonZero(_hourlyrate) {
    hourlyrate = _hourlyrate;
  }
  function CalculateTotSal(uint256 _totalsalary)
  public onlyOwner nonZero(_totalsalary) {
    totalsalary = _totalsalary;
  }
  }
