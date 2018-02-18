pragma solidity ^0.4.0;

import "./mortal.sol";

contract LotteryTicket{


    event wonLottery(address indexed _from, uint256 _amount);

    address public owner;
    bool public has_won;
    uint256 public lottery_amount;

    function LotteryTicket (uint256 _amount) {
        owner = msg.sender;
        has_won = false;
        lottery_amount = _amount;
    }

    function getPaid () returns(bool) {
        if(msg.sender == owner){

        }
    }

    function hasWonLottery () {
        has_won = true;
    }

    function () payable public{
        if(msg.value > 0){
            wonLottery(msg.sender,msg.value);
        }
    }

    // function spendMoneyOn(address _to, uint256 _value, string _reason) returns (uint256){
    //     if(msg.sender == owner){
    //         bool send = _to.send(_value);
    //         if(!send){
    //             throw;
    //         }
    //     } else{
    //         proposal_counter++;
    //         m_proposals[proposal_counter] = Proposal(msg.sender, _to, _value, _reason, false);
    //         proposalReceived(msg.sender, _to, _reason);
    //         return proposal_counter;
    //     }
    // }

    // function confirmProposal(uint proposal_id) onlyowner returns (bool){
    //     confirmProposalWithId(proposal_id);
    //     Proposal proposal = m_proposals[proposal_id];
    //     proposalFetched(proposal._from, proposal._to, proposal._value, proposal._reason, proposal._sent);
    //     if (proposal._from != address(0)){
    //         if (proposal._sent != true){
    //             proposal._sent = true;
    //             if(proposal._to.send(proposal._value)){
    //                 return true;
    //             }
    //             proposal._sent = false;
    //             return false;
    //         }
    //     }
    // }


}