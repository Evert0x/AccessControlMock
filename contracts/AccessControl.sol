// SPDX-License-Identifier: MIT
// source: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/AccessControl.sol

pragma solidity >=0.6.0 <0.8.0;

import "./interfaces/IAccessControl.sol";
import "./RelayReceiver.sol";

contract AccessControl is IAccessControl, RelayReceiver {
    // TODO, consider moving storage to lib, for diamond tests
    bool hasRoleMock;

    function mockHasRole(bool _value) public {
        hasRoleMock = _value;
    }

    function hasRole(bytes32 role, address account)
        external
        override
        view
        returns (bool)
    {
        return hasRoleMock;
    }

    uint256 getRoleMemberCountMock;

    function mockGetRoleMemberCount(uint256 _value) public {
        getRoleMemberCountMock = _value;
    }

    function getRoleMemberCount(bytes32 role)
        public
        override
        view
        returns (uint256)
    {
        return getRoleMemberCountMock;
    }

    address getRoleMemberMock;

    function mockGetRoleMember(address _value) public {
        getRoleMemberMock = _value;
    }

    function getRoleMember(bytes32 role, uint256 index)
        public
        override
        view
        returns (address)
    {
        return getRoleMemberMock;
    }

    bytes32 getRoleAdminMock;

    function mockGetRoleAdmin(bytes32 _value) public {
        getRoleAdminMock = _value;
    }

    function getRoleAdmin(bytes32 role) public override view returns (bytes32) {
        return getRoleAdminMock;
    }

    function grantRole(bytes32 role, address account) external override {}

    function revokeRole(bytes32 role, address account) external override {}

    function renounceRole(bytes32 role, address account) external override {}

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
