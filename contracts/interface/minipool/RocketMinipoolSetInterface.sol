pragma solidity 0.6.6;

interface RocketMinipoolSetInterface {
    function getNextActiveMinipool(string calldata _durationID, uint256 _seed) external returns (address);
    function updateActiveMinipools(string calldata _durationID) external;
}
