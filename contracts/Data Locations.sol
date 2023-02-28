//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

/*

          Kontrat                 <-----             Kontrata yapılan çağrı 

     kontrat depolama alanı                        fonksiyon için ayrılan hafıza ve çağrıdaki data alanı 



     memory:     Geçici hafıza
     storage:    Kalıcı hafıza
     calldata:   Çağrıdaki Argümanlar

    bytes, string, array, struct

    * Değer tipleri (uint, int , bool , bytes32) kontrat üzerinde storage, fonksiyon içinde memory'dir 

    * mappingler her zaman kontrat üzerinde tanımlanır ve storage'dadır.
*/


contract Dataloc {
    uint256 myVal; // storage
    mapping(address => uint256) balances;   //storage
    string myName = "Ozge"; //storage

    function myFn(uint256 paramUInt  /*memory*/) external {}
}

contract Student {
    uint8 age;
    uint16 score;
    string name;
    
}

contract School {
    uint256 totalStudents = 0;               // storage
    mapping(uint256 => Student) students;    // storage 

    function addStudent(string calldata name , uint8 age , uint16 score) external {
        uint256 currentId = totalStudents++;
        students[currentId] = Student(age,score, name);
    }

    function changeStudentInfo(uint256 id, 
        string calldata newName, 
        uint8 newAge, 
        uint16 newScore
    ) external {
        Student storage currentStudent = students[id];


        currentStudent.name = newName;
        currentStudent.age = newAge;
        currentStudent.score = newScore;
    }

    function getStudentName(uint256 id) external view returns(string memory) {
        return students[id].name;
    }
}


