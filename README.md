# Vim Setup

## What is this?
This repo is a guide how to setup vim on a Ubuntu machine with a particular emphasis on python development. You will be guided step by step on setting up vim from scratch. By the end of this guide, you would have installed vim, edited a .vimrc file and installed several vim plugins.

Vim is a terminal-based text editor for Unix like systems. It is fast and reliable. It can also be extended to be used as a fully Integrated Development Environment. 

This guide assumes you are familiar with the basics of using vim. For more help you can run vimtutor

## 1 - install vim
$ sudo apt-get remove vim-tiny
$ sudo apt-get update
$ sudo apt-get install vim

## 2 - Install vim bundle package manager
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## 3 Create and edit your .vimrc file
touch ~/.vimrc
vim ~/.vimrc
