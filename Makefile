#TODO copy configs:
# Iterm2
# BTT
# omnigraffle stencils

CONF_DIR:=config

.PHONY: save
save:

	if [ -d $(CONF_DIR) ]; then \
		echo "Rewriting conf dir"; \
	else \
		mkdir $(CONF_DIR); \
	fi; \

	cat ~/.vimrc > $(CONF_DIR)/vimrc;
	cat ~/.zshrc > $(CONF_DIR)/zshrc;

.PHONY: update-all
update-all:
	cat $(CONF_DIR)/zshrc > ~/.zshrc;
	cat $(CONF_DIR)/vimrc > ~/.vimrc;

	
