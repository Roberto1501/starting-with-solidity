// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Classroom{

    struct Student{
        string name;
        uint256 age;
        uint256 finalMark;
    }

    Student[] public students;

    function addNewStudent(string memory _name,uint256 _age,uint256 _finalMark) public {
        students.push(Student(_name,_age,_finalMark));
    }

    function getStudent(uint256 _indexStudent) public view returns (Student memory){
       return  students[_indexStudent];
    }
}