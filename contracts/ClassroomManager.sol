// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./Classroom.sol";

contract ClassroomManager{

    Classroom[] public classrooms;

    function addNewClassRoom() public {
        Classroom newClassroom = new Classroom();

        classrooms.push(newClassroom);
    }

    function addNewStudentClassRoom(uint256 _indexClassRoom,string memory _name,uint256 _age,uint256 _finalMark) public {
        classrooms[_indexClassRoom].addNewStudent(_name,_age,_finalMark);
    }

    function getStudentClassRoom(uint256 _indexClassRoom, uint256 _indexStudent) public view returns (Classroom.Student memory){
        return classrooms[_indexClassRoom].getStudent(_indexStudent);
    }
}