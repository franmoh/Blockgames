// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract HelloWorld {
    string public user;
    string public prefix = "Hello, ";
    string public surfix = ", and welcome to your first Smart Contract on Ethereum!";

    constructor (string memory startName){
        user = startName;
    }

    function SetName (string memory newUser) public {
        user = newUser;
    }

    function sayHello() public view returns (string memory){
        return string(abi.encodePacked(prefix, user, surfix));
    }
}
