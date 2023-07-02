.PHONY: install
install:
	@echo "Running dotbot"
	dotbot -c ./install.conf.yaml
	@echo "Symlink Alfred and BTT settings via UI"

# cleanup:
