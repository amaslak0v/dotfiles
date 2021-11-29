CONF_DIR:=configs

.PHONY: save-dotfiles
save-dotfiles:
	@echo "Backuping configs"
	cat ~/.config/nvim/init.vim > backup/vimrc;
	cat ~/.zshrc > backup/zshrc;
	cat ~/.tmux.conf > backup/tmux.conf;
	cat ~/.macos > backup/macos;
	brew bundle dump --describe
	@echo "> Save BTT configs manually"
	@echo "> Save Iterm configs manually"
	@echo "> Save Alfred configs manually" # symlink alfred in configs to .dotfilerepo

.PHONY: init
init: save-dotfiles
	@echo "How .dotfile works"
	@echo "Backing up dotfiles"
	@echo "Symlinking dotenvs"
	ln -s -f ~/.dotfiles/vimrc ~/.config/nvim/init.vim
	ln -s -f ~/.dotfiles/zshrc ~/.zshrc
	ln -s -f ~/.dotfiles/tmux.conf ~/.tmux.conf
	ln -s -f ~/.dotfiles/macos ~/.macos
	@echo "Symlynk(via UI) settings of Alfred and BTT to .dotenv"
