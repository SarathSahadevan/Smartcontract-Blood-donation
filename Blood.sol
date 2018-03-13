pragma solidity ^0.4.18;

contract Blood {
    
    struct Donor {
        uint mob;
        string fName;
        string Btype;
    }
    
    mapping (address => Donor) donors;
    address[] public donorAccts;
    
    function setDonor(address _address, uint _mob, string _fName, string _Btype) public {
        var donor = donors[_address];
        
        donor.mob = _mob;
        donor.fName = _fName;
        donor.Btype = _Btype;
        
        donorAccts.push(_address) -1;
    }
    
    function getDonors() view public returns(address[]) {
        return donorAccts;
    }
    
    function getDonor(address _address) view public returns (uint, string, string) {
        return (donors[_address].mob, donors[_address].fName, donors[_address].Btype);
    }
    
    function countDonors() view public returns (uint) {
        return donorAccts.length;
    }
    
}