// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract TodoList {
    // the struct here is to create a list of funtions 
    struct TodoItem{
        string Task;
        bool Iscompleted;

    }

    mapping (uint256 => TodoItem) public List; //mapping here is to bring out uint256 in the List
    uint256 public count = 0;

    event Istaskcompleted( uint256 indexed id);

    constructor() {
        
    }

    function addTask (string calldata Task) public {
        TodoItem memory Item = TodoItem({Task: Task, Iscompleted: false});
        List[count] = Item; // to put item in list 
        count++;//to increase the count
    }

   function completeTask(uint256 id) public {
        if (!List[id].Iscompleted) { 
            List[id].Iscompleted = true;
            emit Istaskcompleted (id);
        }
   }


}