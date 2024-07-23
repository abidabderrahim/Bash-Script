#! /bin/bash

echo "#### Encrypt and Decrypt a File ####"
echo "Please select mode : "

choice="Encrypt Decrypt"
select option in $choice
do
	if [ $REPLY = 1 ]
	then 
		read -p "Please Enter The Filename You Want To Encrypt : " file
		gpg -c $file
		echo "File - $file  Has Been Encrypted"
	else 
		read -p "Please Enter The Filename You Want To Decrypt : " file
		gpg -d $file
		echo "File - $file Has Been Decrypted"
	fi
done
