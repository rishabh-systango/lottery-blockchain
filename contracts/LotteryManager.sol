pragma solidity ^0.4.0;

import "./mortal.sol";
import "./LottertyTicket.sol";

contract LotteryManager is mortal{

    struct LotteryRequest {
        address _to;
        uint256 _value;
        string _reason;
        bool _sent;
    }

    uint256 lottry_requests;
    uint256 days;
    uint256 amount;
    uint256 participants;

    mapping(uint256 => LotteryRequest)all_requests;


    function requsetLotteryTicket (address _to, uint256 _value, string _reason) public returns(address) {

    }

    function pickWinner () returns(address) {

    }

    function setParticipants (uint256 _participants) returns(bool res) {

    }

    function setTimeSpan (uint256 _days) returns(bool res) {

    }

    function setWinningAmount (uint256 _amount) returns(bool res) {

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

    // function() payable{
    //     if(msg.value > 0){
    //         receievedFunds(msg.sender,msg.value);
    //     }
    // }
}