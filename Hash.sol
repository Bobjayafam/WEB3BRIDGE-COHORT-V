// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract Hash{
    bytes32 firstFunctionResult;
    bytes32 secondFunctionResult;
    function hashFnOne(string memory a, string memory b) public returns(bytes32){
       firstFunctionResult = keccak256(abi.encodePacked(a, b));
       return firstFunctionResult;
    }
    
    function hashFnTwo(string memory c, string memory d) public returns(bytes32){
       secondFunctionResult = keccak256(abi.encodePacked(c, d));
       return secondFunctionResult;
    }
    
    
    function viewHashResult() public view returns(bytes32, bytes32) {
        return(firstFunctionResult, secondFunctionResult);
    }
}