// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract Color is ERC721Enumerable {

    string[] public colors;
    mapping(string => bool) _colorExists;
    constructor() public ERC721 ("TinNft", "TNFT") {
    }
    
    function mint(string memory _color) public {
    require(!_colorExists[_color]);
    colors.push(_color);
    uint _id = colors.length - 1;
    _mint(msg.sender, _id);
    _colorExists[_color] = true;
  }
}
