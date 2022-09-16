// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.0 < 0.9.0;

/// @title ENS - Ethereum Name Service
abstract contract ENS {
    /// @dev get resolver
    /// @param _node node hash
    /// @return resolver contract
    function resolver(bytes32 _node) public virtual view returns (Resolver);
}

/// @title Resolver
abstract contract Resolver {
    /// @dev get resolver address
    /// @param _node node hash
    /// @return address pointed to by an ENS identifier
    function addr(bytes32 _node) public virtual view returns (address);
}