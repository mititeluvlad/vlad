#!/bin/bash
cat /etc/hosts | while sep=' ' read -r ip nume
do
if [ -z "$ip" ];then
    break
fi
adresaip=$(dig +short @8.8.8.8  "$nume")
if [ "$adresaip" != "$ip" ] && [ "$nume" != "localhost" ] && [ "$nume" != "Ubuntu" ]; then
echo "Bogus IP for "$nume" in /etc/hosts "
fi
done
