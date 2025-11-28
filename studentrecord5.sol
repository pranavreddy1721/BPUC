// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRecords {

    struct Student {
        uint id;
        string name;
        uint marks;
    }

    Student[] public students;

    function addStudent(uint _id, string memory _name, uint _marks) public {
        students.push(Student(_id, _name, _marks));
    }

    function checkPassOrFail(uint _id) public view returns (string memory) {
        for (uint i = 0; i < students.length; i++) {
            if (students[i].id == _id) {
                if (students[i].marks >= 40) {
                    return "Passed";
                } else {
                    return "Failed";
                }
            }
        }
        return "Not Found";
    }
}
