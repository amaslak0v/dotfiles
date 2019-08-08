#TODO copy configs:
# Iterm2
# BTT
# omnigraffle stencils

CONF_DIR:=config

.PHONY: save
save:
	@echo "Updating configs"
	cat ~/.vimrc > $(CONF_DIR)/vimrc;
	cat ~/.zshrc > $(CONF_DIR)/zshrc;
	cat ~/.tmux.conf> $(CONF_DIR)/tmux.conf;

.PHONY: update-all
update-all:
	cat $(CONF_DIR)/zshrc > ~/.zshrc;
	cat $(CONF_DIR)/vimrc > ~/.vimrc;
	cat $(CONF_DIR)/tmux.conf > ~/.tmux.conf;
