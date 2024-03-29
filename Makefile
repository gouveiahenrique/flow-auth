install:
	# Install flow-auth and its dependencies
	# Determine the operating system and trigger the appropriate installation step
	@if [ `uname -s` = "Linux" ]; then \
		make linux; \
	elif [ `uname -s` = "Darwin" ]; then \
		make macos; \
	else \
		echo "Unsupported operating system: `uname -s`"; \
	fi

linux:
	# Installation for Linux
	@curl -L https://github.com/gouveiahenrique/flow-auth/raw/main/authenticator/Linux/flow-auth.deb -o flow-auth.deb
	@rm -rf flow-auth.deb

macos:
	# Installation for macOS
	@echo `curl -L https://github.com/gouveiahenrique/flow-auth/raw/main/authenticator/MacOS/flow-auth.zip -o flow-auth.zip`
	@unzip flow-auth.zip
	@cp -fr flow-auth.app /Applications && rm -rf flow-auth.app flow-auth.zip __MACOSX
	@xattr -dr com.apple.quarantine "/Applications/flow-auth.app";
	@open -a "flow-auth"
	@pkill -x flow-auth

xcode:
	# Install Flow@IDE
	@curl -L https://github.com/gouveiahenrique/flow-auth/raw/main/plugin/xcode/Flow@IDE0.0.1.zip -o Flow@IDE.zip
	@unzip Flow@IDE.zip
	@cp -fr Flow@IDE.app /Applications && rm -rf Flow@IDE.app Flow@IDE.zip __MACOSX
	@xattr -dr com.apple.quarantine "/Applications/Flow@IDE.app";
	@open -a "Flow@IDE"
	@pkill -x Flow@IDE
