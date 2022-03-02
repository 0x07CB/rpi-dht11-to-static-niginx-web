# Step 1 generate an passkey and rsa key 
dd if=/dev/random of=passkey bs=1024 count=64 
openssl genrsa -aes256 -out rsa_masterkey.priv -rand passkey -writerand nextpasskey -primes 4 4096
openssl rsa -check -noout < rsa_masterkey.priv
echo $(openssl rsa -modulus -noout < rsa_masterkey.priv) > rsa_masterkey.pub
echo """
    dd if=/dev/random of=passrndsrc bs=1024 count=256
    echo $(openssl sha1 -rand rsa_masterkey.pub < passrndsrc) >> passwords.txt
    rm -f passrndsrc
""" > /tmp/subscript1.sh
echo '''
from os import system
for i in range(0,100):
    system("sh /tmp/subscript1.sh")
''' > /tmp/generatorpassword.py
python /tmp/generatorpassword.py

rm -f /tmp/generatorpassword.py
rm -f /tmp/subscript1.sh
rm -f rsa_masterkey.pub
