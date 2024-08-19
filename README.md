# Simple dotfiles management system

## Setting up your dotfiles

1. Install `git`, `make` and `stow`.

       sudo apt -y install make git stow

2. Copy this template to your own `dotfiles` repository (click
   *"Use this template"* button), then clone it to your `$HOME` directory:

       cd; git clone https://github.com/$USER/dotfiles

## Usage

Deploy the dotfiles by running `make install` in this directory.
This will perform the following:

- Run `stow --dotfiles --restow -t ~ $PACKAGES` where $PACKAGES are all
  subdirectories of this directory.
- Run all scripts in `~/.install.d`. This makes it possible for modules to
  contain "postinstall" logic besides just the files (e.g. the modules may
  actually do `apt install` of the needed system packages, change file
  permissions, etc).

Note that if you have conflicting files in your home directory,
operations will be aborted with error messages, clean those files manually
and rerun `make install` until it succeeds.

Ignore the `BUG in find_stowed_paths` [warning](https://github.com/aspiers/stow/issues/65).

The makefile offers a few extra utilities, run `make` to list them.
