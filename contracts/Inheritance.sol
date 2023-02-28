//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;


// virtual ; eğer fonksiyonu miras olarak alırsan bu fonksiyonu yeniden düzenleyebilirsin


contract A {
    uint public x;

    uint public y;

    function setX(uint _x) virtual public {
        x = _x;
    }

    function setY(uint _y) public {
        y = _y;
    }
}
 
 // override ; tekrar yazmak istiyorsan override olarak işaretlemelisin

contract B is A {

    uint public z;

    function setZ(uint _z) public {
        z = _z;
    }
    
    function setX(uint _x) override public {
        x = _x + 2;
    }
}

contract Human {
    function sayHello() public pure virtual returns(string memory) {
        return "itublockchaine uye olmalisin";
    }
}

contract SuperHuman is Human {
    function sayHello() public pure override returns(string memory) {
        return "Selamlar itu blockchain uyesi";
    }

    function welcomeMsg(bool isMember) public pure returns(string memory) {
        return isMember ? sayHello() : super.sayHello();
    }
}

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol"; 
// import @openzeppelin/contracts...

contract Wallet is Ownable {
    fallback() payable external {}
        function sendEther(address payable to, uint amount) onlyOwner public {
            to.transfer(amount);
        }

        function showBalance() public view returns(uint){
            return address(this).balance;
        }
}

