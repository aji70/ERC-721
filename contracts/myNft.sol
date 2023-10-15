// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyNft{

    address public owner;
    uint public totalSupply;
    uint public token_Id;
    uint[] public tokenIds;

    mapping(uint256 => address) public getOwnersAddress;

    constructor(string memory _name, string memory _symbol){
                
    }

     modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _; // Continue with the function if the sender is the owner
    }


      function mint(address to, string memory _tokenUri) public onlyOwner returns(uint256){
        require(to != address(0), "caller is 0 address");
        token_Id++;
    
    
    //    require(totalSupply + _tokenUri >= totalSupply, "OverFlow detected");
    //     balances[to] += _tokenUri;
    //     totalSupply += _tokenUri;
    }

    function transferNft(address _owner, uint256 amount) public onlyOwner() {
		// require(balances[msg.sender]>=amount, "Not enough tokens");
		_owner = msg.sender;

		// balances[msg.sender] -= amount;
		// balances[to] += amount;

	}

    function getUserAddress(uint _token_Id) public view returns (address) {
       return getOwnersAddress[_token_Id];
        
    }
}