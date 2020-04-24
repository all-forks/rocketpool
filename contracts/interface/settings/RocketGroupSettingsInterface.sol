pragma solidity 0.6.6;


// Our group interface
interface RocketGroupSettingsInterface {
    // Getters
    function getDefaultFee() external view returns (uint256);
    function getMaxFee() external view returns (uint256);
    function getNewAllowed() external view returns (bool);
    function getNewFee() external view returns (uint256);
    function getNewFeeAddress() external view returns (address payable);
}
