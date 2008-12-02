#!/bin/bash

HOST="$1"
USERNAME=""

if [[ ! "$HOST" ]]; then
	echo -n "Hostname: "
	read HOST
fi

if [[ ! "$USERNAME" ]]; then
	echo -n "Username: ";
	read USERNAME
fi

ssh-auth

ssh -CX "$USERNAME@$HOST"
exit $?
