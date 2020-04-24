pragma solidity 0.6.6;

contract RocketMinipoolSetInterface {
    function getNextActiveMinipool(string memory _durationID, uint256 _seed) public returns (address);
    function updateActiveMinipools(string memory _durationID) public;
}
