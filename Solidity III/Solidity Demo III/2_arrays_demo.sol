// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MidtermArray{ 
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[20] public myFixedSizeArr;



    function get(uint i) public view returns (uint){
        return arr[i];
    }

    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }
    function pop() public {
        arr.pop();
    }
     function remove(uint index) public {
        delete arr[index];
    }

    
    function getLength() public view  returns(uint)  {
        return myFixedSizeArr.length;
    }

// add the get last array this get the last array you push
      function getLast() public view returns (uint) {
        require(arr.length > 0, "The Array is empty");
        return arr[arr.length - 1];
    }

// this function clear all the array you push
     function clear() public {
        delete arr;
    }


}
