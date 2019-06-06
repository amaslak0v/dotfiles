#TODO copy configs:
# vimrc
# zshrc
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
	
  #mkdir $(CONF_DIR)/Stencils;
	#cp -a /Users/amaslakov/Library/Containers/com.omnigroup.OmniGraffle7/Data/Library/Application Support/The Omni Group/OmniGraffle/Stencils/. > $(CONF_DIR)/Stencils/;

