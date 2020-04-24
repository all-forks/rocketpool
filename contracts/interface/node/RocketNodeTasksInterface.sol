pragma solidity 0.6.6;

contract RocketNodeTasksInterface {
    function run(address _nodeAddress) external;
    function runOne(address _nodeAddress, address _taskAddress) external;
}
