// SPDX-License-Identifier: MIT
// source: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/AccessControl.sol

pragma solidity >=0.6.0 <0.8.0;

import "./interfaces/IAccessControl.sol";
import "./RelayReceiver.sol";

contract AccessControlView is RelayReceiver {
    bool _hasRoleMock;

    function mock_hasRole(bool _value) public {
        _hasRoleMock = _value;
    }

    function _hasRole(bytes32 role, address account)
        internal
        virtual
        view
        returns (bool)
    {
        return _hasRoleMock;
    }

    function _setupRole(bytes32 role, address account) internal virtual {}

    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {}

    function _grantRole(bytes32 role, address account) internal virtual {}

    function _revokeRole(bytes32 role, address account) internal virtual {}
}
