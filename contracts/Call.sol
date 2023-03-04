//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Test {
    uint256 public total;
    uint public fallbackCalled = 0;
    string public incrementer;

    fallback() external payable{
        fallbackCalled += 1;
    }

    function inc(uint256 _amount, string memory _incrementer ) external returns(uint256){
        total += _amount;
        incrementer = _incrementer;

        return total;

    }
}

contract Caller {

}