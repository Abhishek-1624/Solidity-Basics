//SPDX-License-Identifier: GPL-3.0
     
pragma solidity >=0.6.0 <0.9.0;

/*-------------------------------------------------NOTE------------------------------------------------
Address is of two types plain and payable

Address is a variable type and has the following members
balance()
transfer():This should be used in the most cases as it the safest way to send ETH
send():it is like a low level of transfer()
transfer() and send() are only avaliable for payable addresses obviously
----------------------------------------------------------------------------------------------------------
A contract receives ETH in mulitple ways 


1.The first is simply by sending a contracts address by an EOA account,In this case the contract needs atleast
a function by called receive() or fallback()

2.By calling a payable function and sending eth with that transaction

-----------------------------------------------------------------------------------------------------------*/
contract Deposit{
    //Here we declare a receive function to receive ether
    //The contract can only receive function delcared with this syntax without function keyword
    receive() external payable{
    }

    //
    fallback() external payable{
    }

    //This function returns the balance of contract
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    //This is second way of sending ether 
    function sendEther() public payable{
        uint x;
        x++;
    }

    //This is how we transfer function 
    function transferEther(address payable recepient, uint amount) public returns(bool){
        if(amount <= getBalance()){
            recepient.transfer(amount);
            return true;
        }
        else return false;
    }

    
}