pragma solidity ^0.4.22;

contract HTLC {
    //0x2e99758548972a8e8822ad47fa1017ff72f06f3ff6a016851f45c398732bc50c
    //0x6df4530FAC225C828BCe32B9B8449D78ABc6E06A
    string public version = "0.0.1";
    bytes32 public digest;
    address public dest;
    uint public timeOut = now + 5 minutes;
    address issuer = msg.sender; 
 
    modifier onlyIssuer {require(msg.sender == issuer); _; }
    
    constructor (bytes32 _digest, address _dest) public {
        digest = _digest;
        dest = _dest;
    }
    
    function deposit () public payable {}
   
    //this is a test
    function claim(string _hash) public returns(bool result) {
       require(digest == sha256(abi.encodePacked(_hash)));
       selfdestruct(dest);
       return true;
       }
    

    function refund() onlyIssuer public returns(bool result) {
        require(now >= timeOut);
        selfdestruct(issuer);
        return true;
    }
}