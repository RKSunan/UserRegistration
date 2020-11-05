#! /bin/bash
echo "User Registration System needs to ensure all validations are in place during the User Entry"
shopt -s extglob
#echo  "Enter the first name"
#read name
#if [[ $name =~  ^[A-Z]{1}[A-Za-z]{2,}$ ]]
#then 
#	echo "Valid name"
#else
#	echo "Invalid Name"
#fi
#echo "Enter Last Name"
#read lastName
#if [[ $lastName =~ ^[A-Z][a-z]{2,} ]]
#then
#	echo "Valid name"
#else
#	echo "Invalid Name"
#fi
echo  "Enter email"
read email
emailpat="^[0-9a-zA-Z]+([-.+_][a-zA-Z0-9]+)*@[0-9a-zA-Z]+.[a-zA-Z]+([.][a-zA-Z]+)*$"
if [[ $email =~ $emailpat ]]
then
echo "valid"
else
	echo "Invalid"
fi
#echo "Enter Phone number"
#read no
#phone="^[0-9]{2}[ ]{1}[0-9]{10}$"
#if [[ $no =~ $phone ]]
#then 
#echo "valid"
#else
#echo "Invalid"
#fi
#echo "Enter a password"
#read pwd
#a=${#pwd}
#pwdpat="^([a-zA-Z0-9]*[@+-]+[a-zA-Z0-9]*)+$"
#if [[ $a -ge 8 ]]
#then
#if [[ $pwd =~ $pwdpat ]]
#then
#echo "valid"
#else
#echo "Invalid"
#fi
#else
#echo "The pwd length is less than 8"
#fi
