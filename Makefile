# copy configs:
# vimrc
# zshrc
# Iterm2
# BTT
# omnigraffle stencils
DATE:=$(shell date +%Y-%m-%d)
CONF_DIR:=conf_$(DATE)
#echo $(CONF_DIR);

import-all-configs:
		echo $(DATE)
		echo $(CONF_DIR)

	if [ -d $(CONF_DIR) ]; then \
		echo "Writting to: $(CONF_DIR)"; \
	else \
		mkdir $(CONF_DIR); \
	fi; \

	cat ~/.vimrc > $(CONF_DIR)/vimrc;
	cat ~/.zshrc > $(CONF_DIR)/zshrc;

  #mkdir $(CONF_DIR)/Stencils;
	#cp -a /Users/amaslakov/Library/Containers/com.omnigroup.OmniGraffle7/Data/Library/Application Support/The Omni Group/OmniGraffle/Stencils/. > $(CONF_DIR)/Stencils/;
install-all-configs:
	#todo
