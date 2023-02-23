//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Bank {

    mapping(address => uint) balances;

    function sendEtherToContract() payable external {
        balances[msg.sender] = msg.value;
    }

    function showBalance() external view returns (uint) {
        return balances[msg.sender];

    }

    function withdraw(address payable to, uint amount) external {
        require(balances[msg.sender] >= amount, "yetersiz bakiye");
        to.transfer(amount);
        balances[msg.sender] -= amount;
    }
    // ways to send eth
    // Transfer()  hesabımızda olan miktardan fazla gönderirsek geri çevriliyor.
    // Revert 


    // Send()
    // ture, false 

    // Call()

    function withdraw2(address payable to, uint amount) external returns(bool) {
        (bool sent,) = to.call{value: amount}("");
        balances[msg.sender] -= amount;
        return sent;
    }
// bi yerde transfer varsa payable olarak tanımlanır
    uint public receiveCount = 0;
    receive() external payable {
        receiveCount += 1;

    }


}