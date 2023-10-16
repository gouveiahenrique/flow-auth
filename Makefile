install:
	# Check if node is installed
	@command -v node > /dev/null || (echo "Node is not installed. Installing..." && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash && . ~/.nvm/nvm.sh && nvm install node)

	# Check if npm is installed
	@command -v npm > /dev/null || (echo "npm is not installed. Installing..." && curl -L https://www.npmjs.com/install.sh | sh)

	# Install flow-auth and its dependencies
	@sudo rm -rf /usr/local/flow
	@sudo mkdir /usr/local/flow
	@sudo npm i -g --prefix /usr/local/flow electron https://github.com/gouveiahenrique/flow-auth.git