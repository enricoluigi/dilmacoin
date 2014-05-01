# Install darkcoin on ubuntu server
# In Bear Grylls we trust.

sudo apt-get update && sudo apt-get install libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm build-essential libssl-dev git && git clone https://github.com/ig0tik3d/darkcoin-cpuminer-1.2c.git && cd darkco* && sudo sh autogen.sh && ./configure CFLAGS="-O3" && make
