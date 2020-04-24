pragma solidity 0.6.6;

interface RocketNodeKeysInterface {
    function validatePubkey(bytes calldata _validatorPubkey) external view;
    function reservePubkey(address _nodeOwner, bytes calldata _validatorPubkey, bool _reserve) external;
}
