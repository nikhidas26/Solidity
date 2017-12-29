pragma  solidity ^0.4.0;

contract mortal {
    
    address owner;
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    function mortal() public {
        owner = msg.sender;
    }
    
    function kill() private onlyOwner {
        selfdestruct(owner);
    }
    
}
