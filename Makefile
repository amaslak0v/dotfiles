#TODO copy configs:
# Iterm2
# BTT
# omnigraffle stencils

CONF_DIR:=configs

.PHONY: save-dotfiles
save-dotfiles:
	@echo "Updating configs"
	cat ~/.vimrc > $(CONF_DIR)/dotfiles/vimrc;
	cat ~/.zshrc > $(CONF_DIR)/dotfiles/zshrc;
	cat ~/.tmux.conf> $(CONF_DIR)/dotfiles/tmux.conf;

.PHONY: update-local-dotfiles
update-local-dotfiles:
	cat $(CONF_DIR)/dotfiles/zshrc > ~/.zshrc;
	cat $(CONF_DIR)/dotfiles/vimrc > ~/.vimrc;
	cat $(CONF_DIR)/dotfiles/tmux.conf > ~/.tmux.conf;

.PHONY: install-dotfiles
install-dotfiles:
# params vagrant@1.1.1.1 	
	ansible-playbook -i ${ANSIBLE_HOST}, installer/dotfiles.yml -u root -k


#.PHONY create-centos-env
#create-centos-env:
	
