pragma solidity ^0.4.0;

contract MyContract {
    
    uint myVariable;
    
    address owner;
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
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
    
    function kill() public onlyOwner {
        selfdestruct(owner);
    }
    
    function () payable public {
        
    }
}
