printf "\033c\033[44;30m\n"
mkdir $HOME/src
cd $HOME/src
PREFIX="$HOME/opt/cross"
TARGET="i386-elf-linux"
PATH="$PREFIX/bin:$PATH" 
mkdir gcc
cd gcc
curl https://ftp.gnu.org/gnu/gcc/gcc-2.7.2.3.tar.gz >./gcc-2.7.2.3.tar.gz
tar -xvf gcc-2.7.2.3.tar.gz
cd gcc-2.7.2.3
./configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc