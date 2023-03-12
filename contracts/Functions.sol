// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

 contract Functions {
     uint public luckyNumber = 7;

     function showNumber() public view returns(uint) {
       return luckyNumber;
       
     }

     function setNumber(uint newNumber) public {
         luckyNumber = newNumber;
     }

     function nothing() public pure returns(uint, bool , bool){
         return(5, true, false);
     }

 contract Functions {

         uint x=3;

         function setX (uint newX) public {
             x = newX;

          }

          function setX() public view returns (uint){
             return x;
          }

         function setX(uint y) public view returns (uint) {
             return x+y;

         }

         function add(uint a, uint b) public view returns(uint){ 
             return a + b + block.timestamp;
         }


         function add2 (uint a , uint b) public pure returns(uint) {  
             return a + b;
         }
     }


contract Functions {
    // Public , External, Internal, Private 

    // Public : Bu fonksiyonu dışardan hem kullanıcılar hem de kontratlar çağırabilir.

    function add(uint a , uint b) public pure returns(uint){
        return a + b;
    }

    function add2(uint c, uint d) public pure returns (uint){
        return add(c,d);
    }

    function publicKeyword() public pure returns(string memory){
        return "Bu bir public fonksiyondur";
    }

    function callPublicKeyword() public pure returns(string memory) {
        return publicKeyword();
    }
    // Private: Bu fonksiyona sadece bu kontrat ulaşabilir. Dışarıdan kimse bu fonksiyona ulaşamaz.

    function privateKeyword() private pure returns (string memory) {
        return "Bu bir private fonksiyondur";
    }

    function callPrivateKeyword() public pure returns(string memory) {
        return privateKeyword();
    }
    // Internal : sadece miras alan kontratlar bu fonksiyonu çağırabilir , dışarıdan kullanıcı çağıramaz.
    function internalKeyword() internal pure returns(string memory){ 
        return "Bu bir internal fonksiyonudur";

    }
     function callInternalKeyword() public pure returns(string memory) {
        return internalKeyword();
     }
     // External : Dışarıdan kullanıcılar çağırabilir fakat kontrat içerisinde çağrılmaz.

    function ExternalKeyword() external pure returns(string memory){ 
        return "Bu bir external fonksiyonudur";

    }
//      function callExternalKeyword() public pure returns(string memory) {
//         return ExternalKeyword(); // hata alırız
//      }
// }

