pragma solidity 0.6.6; 


// Our group contract interface
interface RocketGroupContractInterface {
    // Getters
    function getOwner() external view returns(address);
    function getFeePerc() external view returns(uint256);
    function getFeePercRocketPool() external view returns(uint256);
    function getFeeAddress() external view returns(address);
    function hasDepositor(address _depositorAddress) external view returns (bool);
    function hasWithdrawer(address _withdrawerAddress) external view returns (bool);
    function setFeePercRocketPool(uint256 _stakingFeePerc) external returns(bool);
}
