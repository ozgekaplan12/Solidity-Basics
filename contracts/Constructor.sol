// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// sadece başlangıçta çalışan özel fonksiyondur.
//  contract Constructor { 
//     string public tokenName;
//     uint public totalSupply;

//     constructor(string memory name, uint number) {
//         tokenName = name;
//         totalSupply = number;

//     }

//     function set(uint number) public {
//         totalSupply = number;
//     }
// }

// contract Constructor2 {
    // constant , immutable   : bir daha değişmez 
    // uint public constant number = 10;

    // function set(uint num) public {
    //     number = num; 
    // }  bu fonksyion hata verir değişmeyeceği için 

// }

contract Constructor3 {
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }
}
