Checkout:

git clone https://github.com/somtirtha/som_configs.git config_files
cd config_files
git submodule update --init

Create softlinks to vim/.vim and vim/.vimrc in your home directory. Be sure to backup your original files beforehand.

cd ~
ln -s /path/to/config_files/vim/.vim .vim
ln -s /path/to/config_files/vim/.vimrc .vimrc


