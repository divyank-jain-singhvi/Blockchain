// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Bank{
    int bal;
    constructor() {
        bal=1;
    }
    function getBalance() view public returns(int){
        return bal;
    }
    function withdrow(int amt)public{
        require(amt <= bal, "Insufficient balance");
        bal = bal - amt;
    }
    function deposit(int amt) public{
        bal = bal + amt;
    }
}
