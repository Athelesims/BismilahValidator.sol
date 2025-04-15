pragma solidity ^0.8.0;  

contract HumanityDAO {  
    struct Proposal {  
        uint256 id;  
        string description;  
        uint256 votesFor;  
        uint256 votesAgainst;  
        bool executed;  
    }  

    mapping(uint256 => Proposal) public proposals;  
    uint256 public nextProposalId;  

    function createProposal(string memory _description) public {  
        proposals[nextProposalId] = Proposal(nextProposalId, _description, 0, 0, false);  
        nextProposalId++;  
    }  

    function vote(uint256 _proposalId, bool _support) public {  
        Proposal storage proposal = proposals[_proposalId];  
        if (_support) proposal.votesFor++;  
        else proposal.votesAgainst++;  
    }  
}