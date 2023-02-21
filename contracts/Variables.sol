// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Variables {
    // state variables
    string public club = "blockchain";

    function show() public pure returns(uint){
        // local variables
        uint numbber = 12;
        return number;

    }    
    

    function show2() public view returns(uint){
        // global variables
        return block.number;
        block.difficulty;
        block.gaslimit;
        block.timestamp;
        msg.sender;
        msg.value;
        msg.data;


    }

    
    // Fixed - Size Types
    bool isTrue = true; //  false 

    // type-name;  type-name = value;

    int number = 12; // int256  -2^256 to 2^256.  
    uint number = 12; // 0 to 2^256

    address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;   // 20 byte
    bytes32 name1 = "ozge";

    // Dynamic - Size Types 

    string name2 = "blockchain";
    bytes name3 = "bc";

    uint[] array = [1, 2, 3, 4, 5];
    mapping(uint => string) list;



    // User Defined Value Types
    struct human {
        uint ID;
        string name;
        uint age;
    }
    enum trafficLight {
        RED,
        YELLOW,
        GREEN
    }

    trafficLight.GREEN

    // 1 wei = 1;
    // 1 ether  = 10^18; wei;
    // 1 gwei = 10^9 wei;

    // 1 = 1 second;
    // 1 minute = 60 second; 
    // 1 hour = 60 minute;
    // 1 days
    //   1 week
}
