Checkout:
```
1. git clone https://github.com/somtirtha/som_configs.git config_files
2. cd config_files
3. git submodule update --init
```
Create softlinks to vim/.vim and vim/.vimrc in your home directory. Be sure to backup your original files beforehand.
```
1. cd ~
2. ln -s /path/to/config_files/vim/.vim .vim
3. ln -s /path/to/config_files/vim/.vimrc .vimrc
```

