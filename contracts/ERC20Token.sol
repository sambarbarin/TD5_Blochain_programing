pragma solidity ^0.6.2;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

contract ERC20Token is ERC20 {
    
//Ticker:  n_3N0
//Supply:  45385481000000000000000000

    constructor (string memory name, string memory symbol,uint256 initialSupply) public ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }

    //0x5BF478C5286874552eE37c2862E2fa43fc1760a6
    mapping(address => bool) public isWhiteList;
    mapping(address => uint256) public tier;

    function getToken() external returns (bool)
    {
        require(isWhiteList[msg.sender], "Address not whitelisted");
        //address tokenSender = 0x5BF478C5286874552eE37c2862E2fa43fc1760a6;
        _mint(msg.sender, 1000000000000000000);
    }

    function buyToken() external payable returns (bool)
    {
        require(isWhiteList[msg.sender], "Address not whitelisted");
        _mint(msg.sender, msg.value);
    }

    function isCustomerWhiteListed(address customerAddress ) external view returns (bool) 
    { 
        return isWhiteList[customerAddress];
    }

    function customerTierLevel(address customerAddress) external view returns (uint256)
    {
        return tier[customerAddress];
    }
    /*/

    function isCustomerWhiteListed(address custumerAddress ) external returns (bool)
   
    {
        address[] whitelist;
        whitelist[0] = [0xac6cb723bf0a891c86f47a433f682a7973417f60];
        if (custumerAdddress into (whitelist)){
            bool result = true;
        }else{
            bool result =false;
        }
        return result;
    }
    /*/

}





