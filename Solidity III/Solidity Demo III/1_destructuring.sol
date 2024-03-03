// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract destruct{
function multiOutput() public pure returns (uint, bool) {
    return (2, true);
}

function nameOutput() public pure returns (uint a, bool b) {
    return (1, true);
}

function varAssigned() public pure returns (uint a, bool b) {
    a = 1;
    b = true;
}

function destructAssigned() public {
    (uint a, bool b) = multiOutput();
    (, b) = multiOutput();

    emit  LogValues(a, b);
   
}


   function additionOperation(uint x, uint y) public pure returns (uint) {
        return x + y;
    }

    function divisionOperation(uint numerator, uint denominator) public pure returns (uint) {
        require(denominator != 0, "Denominator cannot be zero");
        return numerator / denominator;
    }

    event LogValues(uint a, bool _b);

}