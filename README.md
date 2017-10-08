# dotfiles
sync my dot files, also new way to farm commits

## Setup

`git clone https://github.com/jamesnicolas/dotfiles.git ~/.dotfiles`

`cd ~/.dotfiles`

`make setup`
- `git clone https://github.com/jamesnicolas/dotfiles.git ~/.dotfiles`
- `cd ~/.dotfiles`
- `make symlink`
- `make vundle`

Right now if you already have some of this setup, `make symlink` and `make vundle` might not work. You might have to set up things manually.

## todo

- make make smoother
- make for syncing vim plugins
