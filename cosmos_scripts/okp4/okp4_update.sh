sudo systemctl stop okp4d

cd $HOME
rm -rf okp4d
git clone https://github.com/okp4/okp4d.git
cd okp4d  || return
git checkout v4.0.0
make build
sudo mv $HOME/go/bin/okp4d /usr/local/bin/okp4d

okp4d version

sudo systemctl restart okp4d
