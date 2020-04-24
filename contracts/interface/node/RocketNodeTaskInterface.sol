pragma solidity 0.6.6;

contract RocketNodeTaskInterface {
    function name() public view returns (string memory);
    function run(address _nodeAddress) public returns (bool);
}
