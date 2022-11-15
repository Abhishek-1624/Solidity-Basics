//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;
 
 contract Property{
     //1. Boolean Type
     bool public sold;


     //2.Integer type
     uint8 public x = 255;/*This was a bug in the previous versions of the where the the value exceeded when the limit has
      reached , so to avoid this people use SafeMath library*/
     int8 public y = -10;

     function f1() public{
         x += 1;
     }
 }