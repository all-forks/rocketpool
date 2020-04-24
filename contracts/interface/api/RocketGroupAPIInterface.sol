pragma solidity 0.6.6; 


// Our group interface
interface RocketGroupAPIInterface {
    // Getters
    function getGroupName(address _ID) external view returns (string memory);
    function getGroupAccessAddress(address _ID) external view returns(address);
}