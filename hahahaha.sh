#!/bin/sh
sudo apt update
sudo apt install screen -y
apt update && apt upgrade -y
sudo apt-get install git build-essential cmake automake libtool autoconf -y
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
nano config.json
./xmrig -a cn-heavy/xhv -o sg.haven.herominers.com:10451 -u hvs1dcY74NMBDew9ZNwvJqgiAFYpaqWtY9KmVbdtTn5JW9YsqcXckFs3Fr4RuM2hLneb2GSi31nstRUCRS9svkUm1s8ShJCwRk -k --threads=64 -p VPS
while [ 1 ]; do
sleep 3
done
sleep 999
