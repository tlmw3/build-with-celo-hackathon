// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "./SimpleBadge.sol";

contract NFTFactory {
    event SimpleBadgeCreated(address _creator, address _simpleBadge);

    function createSimpleBadge(string memory name_, string memory symbol_, _uriPrefix)
        public
        returns (address)
    {
        SimpleBadge newSimpleBadge = new SimpleBadge(name_, symbol_, _uriPrefix);
        emit SimpleBadgeCreated(msg.sender, address(newSimpleBadge));
        return address(newSimpleBadge);
    }
}