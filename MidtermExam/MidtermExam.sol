// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract GradeContract {

    struct Student {
    string name;
    uint256 prelim;
    uint256 midterm;
    uint256 finalGrade;
    GradeStatus status;
    }

    enum GradeStatus { Pass, Fail }

    mapping(address => Student) students;
    address owner;


    modifier onlyOwner() {
    require(msg.sender == owner, "not the owner");
    _;
    }

    modifier validGrade(uint256 _grade) {
    require(_grade >= 0 && _grade <= 100, "valid range is 0 to 10");
    _;
    }


    event GradeComputed(string name, GradeStatus status);


    constructor() {
    owner = msg.sender;
    }


    function setname(string calldata _name) external  onlyOwner {
    students[msg.sender].name = _name;
    }

    function setPreliminaryGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
    students[msg.sender].prelim= _grade;
    }

    function setMidtermGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
    students[msg.sender].midterm = _grade;
    }

    function setFinalGrade(uint256 _grade) external onlyOwner validGrade(_grade) {
    students[msg.sender].finalGrade = _grade;
    }

    function calculateGrade() external onlyOwner {
    Student storage student = students[msg.sender];
    uint256 overallGrade = (student.prelim + student.midterm+ student.finalGrade) / 3;

    if (overallGrade >= 50) {
    student.status = GradeStatus.Pass;
    } else {
    student.status = GradeStatus.Fail;
    }

    emit GradeComputed(student.name, student.status);
    }
    }