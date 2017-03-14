#!/bin/bash
echo Digite a senha que voce quer usar:
read senha
echo Login: Admin
echo Password:
read pass
if [ "$pass" == "$senha" ]; then
	echo Access granted
else
	echo Access denied, killing program.
fi	
