pragma solidity ^0.4.0;

import "mortal.sol";

contract MyContract is mortal {
    
    uint myVariable;
    
    address owner;
    
    function MyContract() payable public {
        myVariable = 5;
        owner = msg.sender;
    }
    
    function setMyVariable(uint myNewVariable) public onlyOwner{
        myVariable = myNewVariable;
    }
    
    function getMyVariable() public constant returns(uint) {
        return myVariable;
    }
    
    function getMyContractBalance() public constant returns(uint) {
        return this.balance;
    }
    
    function () payable public {
        
    }
}
