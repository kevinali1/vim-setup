# Vim Setup

## What is this?
This repo is a guide how to setup vim on a Ubuntu machine with a particular emphasis on python development. You will be guided step by step on setting up vim from scratch. By the end of this guide, you would have installed vim, edited a .vimrc file and installed several vim plugins.

Vim is a terminal-based text editor for Unix like systems. It is fast and reliable. It can also be extended to be used as a fully Integrated Development Environment. 

This guide assumes you are familiar with the basics of using vim. For more help you can run vimtutor

## 1 - Install vim
```console
$ sudo apt-get remove vim-tiny
$ sudo apt-get update
$ sudo apt-get install vim
$ sudo apt install vim-gtk3  # allows +clipboard support
```

## 2 - Install vim bundle package manager
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## 3 - Clone this repo
$ mkdir Code; cd Code
$ git clone git@github.com:kevinali1/vim-setup.git
$ cd vim-setup

## 4 - Create and edit your .vimrc file
$ cp ~/.vimrc ~/.vimrc.backup
$ vim ~/.vimrc

## 5 - Install package updates
$ vim

Type :PluginInstall. 

This will install all the plugins. It make take a few minutes. Some installations may fail the first time. If they do, just repeat this command until everything is installed properly.
