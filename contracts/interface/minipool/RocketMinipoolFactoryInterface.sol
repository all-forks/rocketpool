pragma solidity 0.6.6;


interface RocketMinipoolFactoryInterface {
    function createRocketMinipool(address _nodeOwner, string calldata _durationID, uint256 _etherDeposited, uint256 _rplDeposited, bool _trusted) external returns(address);
}