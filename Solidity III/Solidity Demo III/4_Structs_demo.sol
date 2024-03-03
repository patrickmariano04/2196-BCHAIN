// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Todo {
    string text;
    bool completed;
}

contract Todos {
    Todo[] public todos;

// this funtion will add to do
     function addTodo(string memory _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }
//this function will get the total you made
      function getTotalTodos() external view returns (uint) {
        return todos.length;
    }

    
}