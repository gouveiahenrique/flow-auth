install:
    # Install flow-auth and its dependencies
    @echo "Please enter your root password if it's asked"
    @if [ `uname -s` = "Windows" ]; then \
        make windows; \
    else \
        sudo rm -rf /usr/local/flow; \
    fi
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
	@sudo dpkg -i flow-auth.deb
	@rm -rf flow-auth.deb

macos:
	# Installation for macOS
	@curl -L https://github.com/gouveiahenrique/flow-auth/raw/main/authenticator/MacOS/flow-auth.zip -o flow-auth.zip
	@unzip flow-auth.zip
	@cp -fr flow-auth.app /Applications && rm -rf flow-auth.app flow-auth.zip __MACOSX
	@xattr -dr com.apple.quarantine "/Applications/flow-auth.app";
	@open -a "flow-auth"
	@pkill -x flow-auth

windows:
	# Installation for Windows
	@curl -L https://github.com/gouveiahenrique/flow-auth/raw/main/authenticator/Windows/flow-auth.exe -o flow-auth.exe
	@start flow-auth.exe
