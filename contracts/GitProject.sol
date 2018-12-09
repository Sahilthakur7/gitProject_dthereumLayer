pragma solidity ^0.4.11;

contract GitProject {

    struct User {
        uint id;
        string name;
        uint repoCount;
    }

    struct Repository {
        uint id;
        string name;
    }

    mapping(uint => User) public users;
    mapping(uint => Repository) public repositories;
    mapping(uint => address) public reposToUsers;

    uint public usersCount;
    uint public repositoriesCount;
    
    function GitProject () public {
        addUser("Sourabh");
    }

    function addUser (string _name) private {
        usersCount++;
        users[usersCount] = User(usersCount, _name, 0);
    }

    function addRepository (string _name) private {
        repositoriesCount++;
        repositories[repositoriesCount] = Repository(repositoriesCount,_name);
        reposToUsers[repositoriesCount] = msg.sender;
    }
}
