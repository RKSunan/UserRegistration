#! /bin/bash
echo "User Registration System needs to ensure all validations are in place during the User Entry"
shopt -s extglob
echo  "Enter the first name"
read name
if [[ $name =~  ^[A-Z][A-Za-z]{2,}$ ]]
then 
	echo "Valid name"
else
	echo "Invalid Name"
fi
echo "Enter Last Name"
read lastName
if [[ $lastName =~ ^[A-Z][a-z]{2,}$ ]]
then
	echo "Valid name"
else
	echo "Invalid Name"
fi
echo  "Enter email"
read email
emailpat="^[0-9a-zA-Z]+([-.+_][a-zA-Z0-9]+)*@[0-9a-zA-Z]+.[a-zA-Z]+([.][a-zA-Z]+)*$"
if [[ $email =~ $emailpat ]]
then
echo "valid"
else
	echo "Invalid"
fi
echo "Enter Phone number"
read no
phone="^[0-9]{2}[ ]{1}[0-9]{10}$"
if [[ $no =~ $phone ]]
then 
echo "valid"
else
echo "Invalid"
fi
echo "Enter a password with atleast a Capital, Number and a Special Character"
echo "enter password"
read pwd
a=${#pwd}
echo $a
pwdCap="^([a-zA-Z0-9%$#@*-+_]*[A-Z]+[a-zA-Z0-9%$#@*-+_]*)+$"
pwdNo="^([a-zA-Z0-9%$#@*-+_]*[0-9]+[a-zA-Z0-9%$#@*-+_]*)+$"
pwdSpecial="^([a-zA-Z0-9%$#@*-+_]*[%$#@*-+_]+[a-zA-Z0-9%$#@*-+_]*)+$"
if [[ $a -ge 8 ]]
then
if [[ $pwd =~ $pwdCap && $pwd =~ $pwdNo && $pwd =~ $pwdSpecial ]]
then
echo "valid"
elif [[ $pwd =~ $pwdNo && $pwd =~ $pwdCap && $pwd =~ $pwdSpecial ]]
then
echo "valid"
elif [[ $pwd =~ $pwdNo && $pwd =~ $pwdSpecial && $pwd =~ $pwdCap ]]
then
echo "Valid"
elif [[ $pwd =~ $pwdSpecial && $pwd =~ $pwdNo && $pwd =~ $pwdCap ]]
then
echo "valid"
elif [[ $pwd =~ $pwdSpecial  && $pwd =~ $pwdcap  && $pwd =~ $pwdNo ]]
then
echo "valid"
elif [[ $pwd =~ $pwdCap  && $pwd =~ $pwdSpecial  && $pwd =~ $pwdNo ]]
then
echo "valid"
else
echo "Invalid"
fi
else
echo "The paswword length is less then 8"
fi

