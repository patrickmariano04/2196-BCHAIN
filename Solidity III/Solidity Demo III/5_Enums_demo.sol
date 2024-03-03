// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending, 
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;

    function get() public view returns (Status) {
        return status;
    }
    
    function set(Status _status) public {
        status = _status;
    }
   
    function cancel() public {
        status = Status.Canceled;
    }

    function accept() public  {
        status = Status.Accepted;
    }

    function reset() public {
        delete status;
    }
    //this will check is the status is pending
     function pending() public view returns (Status) {
      return status;
    }

    // this function will check if the starus is shipped
    function shipped() public view returns (Status) {
        return status;
    }
}