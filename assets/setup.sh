#!/bin/bash

# avoid dpkg frontend dialog / frontend warnings
export DEBIAN_FRONTEND=noninteractive

mv /asserts/startup.sh /usr/sbin/startup.sh &&
  chmod +x /usr/sbin/startup.sh

mkdir -p /usr/local/java &&
cd /usr/local/java &&
cat /assets/jdk-8u231-linux-x64.tar.gz.* | tar xzvf - &&


echo 'export JAVA_HOME=/usr/local/java/jdk1.8.0_231' >> /etc/bash.bashrc &&
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> /etc/bash.bashrc &&

mv /assets/startup.sh /usr/sbin/startup.sh &&
chmod +x /usr/sbin/startup.sh

# Remove installation files
rm -r /assets/

exit $?
