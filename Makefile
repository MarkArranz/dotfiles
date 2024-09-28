all: shell.conf editor.conf term.conf

zsh.conf:
	stow --target=$$HOME --verbose --dotfiles zsh

nvim.conf:
	stow --target=$$HOME --verbose --dotfiles nvim

kitty.conf:
	stow --target=$$HOME --verbose --dotfiles kitty

