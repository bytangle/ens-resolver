// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.8.0 < 0.9.0;

import "./ENS.sol";

/// @title NameLookup
/// @dev look-up an ENS name
contract NameLookup {
    /// @dev same for mainnet, ropsten, goerli and other networks
    address ensAddr = 0x00000000000C2E074eC69A0dFb2997BA6C7d2e1e;
    ENS ens = ENS(ensAddr);

    /// @dev lookup an ENS name
    /// @param _node node hash
    /// @return address pointed to by the ENS name 
    function resolve(bytes32 _node) public view returns(address) {
        Resolver resolver = ens.resolver(_node);

        return resolver.addr(_node);
    }
}