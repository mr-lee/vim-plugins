ViM Plugins
=============

This is a collection of vim plugins I've found useful for my code development.  Woo.

***

Installation
===============
Before you do anything, make sure to backup your own .vimrc and .vim/ directory if you
want to keep anything.

```
cd ~
rm -rf .vim
git clone https://github.com/mr-lee/vim-plugins.git --recursive .vim
cd .vim
cp .vimrc ../
```

Note: To use tab completion (particularly for c++), you'll need to install ctags.
Fortunately, almost all modern distros carry a release package of ctags ready to be
installed!  All you need to do is

Gentoo-based:
```
sudo emerge -v ctags 
```

Debian-based:
```
sudo apt-get install ctags
```

Fedora-based:
```
sudo yum -y install ctags
```

Or whatever the heck your package management system requires you to do for installation.

You'll also need to install ack (ack-grep) which is an awesome tool for looking for stuff
in your source tree.  Install as you like with your package manager of choice.

***

Configuration
===============

The comments in my vimrc should tell you pretty much what all the hotkeys are and how to 
use them.  For quick reference:

- Ctrl+c: <leader>
- <leader>g: Undo Tree
- <leader>n: File Browser Tree (NERDTree)
- <leader>f: Function Browser (Taglist)
- <leader>td: Tasklist
- <leader>a: Ack (searches directories for line, returns matches and lets you jump to files)
- Ctrl + hjkl: switches context window direction pressed

There are a few more, but these are the main ones that I tend to use.

***

Hopeully these plugins make your life much easier,and your coding experiences more 
painless and enjoyable!
