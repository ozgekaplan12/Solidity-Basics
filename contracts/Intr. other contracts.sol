//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Interact {
    address public caller;
    mapping(address => uint256) public counts;
    function callThis() external {
        caller = msg.sender;
        counts[msg.sender]++;

    }
}

contract Pay {
    mapping (address => uint256) public userBalances;

    function payEth(address _payer) external payable {
        userBalances[_payer] += msg.value;
    }
}

contract Caller {

} 