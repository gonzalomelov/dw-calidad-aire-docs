apt-get update
apt-get --assume-yes install postgresql-server-dev-9.6
apt-get --assume-yes install build-essential
apt-get --assume-yes install git
git clone https://github.com/michelp/pgjwt.git
cd pgjwt
make install