#!/bin/bash


'this ia a multiline commnet'

echo "========create a user==========="

read -p "enter the username:" username
read -p"enter the password" passwd



sudo useradd -m "$username"
echo -e "$passwd\n$passwd" | sudo passwd "$username"


echo "=========user created============"


userdel $username
"===deleteion of user======"



/etc/passwd | grep $username | wc


echo "as wc is 0 the user is deleted"

