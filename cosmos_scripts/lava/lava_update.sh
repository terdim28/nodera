sudo systemctl stop lavad

sudo rm -rf /usr/local/bin/lavad
source ~/.bash_profile

cd || return
rm -rf lava
git clone https://github.com/lavanet/lava
cd lava || return
git checkout v0.6.0
make install
sudo mv $HOME/go/bin/lavad /usr/local/bin/lavad

lavad version

sudo systemctl restart lavad
