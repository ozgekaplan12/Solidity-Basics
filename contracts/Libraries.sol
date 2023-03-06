//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

// bazı özellikleri birden fazla noktada kullandığımızda

library Math {
    // Kullanılabilirliği

    function plus(uint x, uint y ) public pure returns(uint){
        return x + y;
    }

    function minus(uint x, uint y ) public pure returns(uint) {
        return x - y;
    }

    function multi(uint x, uint y ) public pure returns(uint){
        return x * y;
    }

    function divide(uint x, uint y ) public pure returns(uint){
        require( y != 0, "bu sayiyi begenmedim!");
        return x/y;
    }

    function min(uint x, uint y ) public pure returns(uint){
        if( x <= y){
            return x;
        } else {
            return y;
        }
    }

    function max(uint x, uint y) public pure returns(uint){
        if( x >= y){
            return x;
        } else {
            return y;
        }
    }
    
}

contract Library {

    // using Math for uint;
    // function trial1(uint x, uint y) public pure returns(uint){
    //     return x.plus(y);
    // }


    function trial1(uint x, uint y) public pure returns(uint){
        return Math.plus(x,y);
    }

    function trial2(uint x, uint y) public pure returns(uint){
        return Math.minus(x,y);
    }

    function trial3(uint x, uint y) public pure returns(uint){
        return Math.multi(x,y);
    }

    function trial4(uint x, uint y) public pure returns(uint){
        return Math.divide(x,y);
    }

    function trial5(uint x, uint y) public pure returns(uint){
        return Math.max(x,y);
    }
}
