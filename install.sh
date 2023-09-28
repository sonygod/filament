apt update
sudo apt-get remove clang-14 -y
sudo apt-get install clang-14 -y
sudo apt-get install libc++-14-dev libc++abi-14-dev -y
sudo apt install build-essential git subversion cmake libx11-dev libxxf86vm-dev libxcursor-dev libxi-dev libxrandr-dev libxinerama-dev libegl-dev -y
sudo apt install libwayland-dev wayland-protocols libxkbcommon-dev libdbus-1-dev linux-libc-dev -y

rm -rf /home/rock
cd ~
mkdir /home/rock
mkdir /home/rock/tools
cd /home/rock/tools/
apt install git -y
git clone https://github.com/emscripten-core/emsdk.git

# Enter that directory
cd emsdk

# Fetch the latest version of the emsdk (not needed the first time you clone)
git pull

# Download and install the latest SDK tools.
./emsdk install latest

# Make the "latest" SDK "active" for the current user. (writes .emscripten file)
./emsdk activate latest

# Activate PATH and other environment variables in the current terminal
source ./emsdk_env.sh


cd /workspace/filament
