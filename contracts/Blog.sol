//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Blog {
    string public name;
    address public owner;

    // using thee counters from openzeppling for post ids
    using Counters for Counters.Counter;
    Counters.Counter private _postIds;
    struct Post {
        uint id;
        string title;
        string content;
        bool published;
    }

    //creating mapping for id to posts and hash to posts
    mapping (uint =>Post) private idToPost;
    mapping (string => Post) private hashToPost;

    //events emitted when the postIsCreated and postIsUpdated

}