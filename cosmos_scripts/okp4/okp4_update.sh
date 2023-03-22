sudo systemctl stop okp4d

cd || return
rm -rf okp4d
git clone https://github.com/okp4/okp4d.git
cd okp4d || return
git checkout v4.1.0
make build
sudo mv $HOME/okp4/target/dist/okp4d /usr/local/bin/okp4d

okp4d version

sudo systemctl restart okp4d
