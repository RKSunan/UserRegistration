#! /bin/bash
echo "User Registration System needs to ensure all validations are in place during the User Entry"
echo  "Enter the first name"
read name
if [[ $name =~  ^[A-Z]{1}[A-Za-z]{2,}$ ]]
then 
	echo "Valid name"
else
	echo "Invalid Name"
fi
