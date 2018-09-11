Vim 8 Configuration 
===================

In order for the plugins to work properly the following packages need to be installed

Installing MinPack
------------------
	$ mkdir -p $VIMCONFIG/pack/minpac/opt
	$ cd $VIMCONFIG/pack/minpac/opt
	$ git clone https://github.com/k-takata/minpac.git

Open vim and run the following command to update the vim plugins

	:PackUpdate

Configure FZF Plugin
--------------------

	$ ~/.vim/pack/minpac/start/fzf/install --bin

Add the export line to .bashrc or .profile

	export PATH=$PATH:~/.vim/pack/minpac/start/fzf/bin


Configuring Dispatch Plugin
---------------------------

Install tmux using the following command
	$ sudo apt install tmux
