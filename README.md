# Plugin Installation for IntelliJ, Android Studio and Xcode

Follow the steps below to install the plugin.

## Step 1: Install the Flow authentication agent

The first step is to install the agent that will connect to the Flow portal for authentication.

## Linux and macOS

### For IntelliJ and Android Studio
To do this, execute the following command in your terminal:

```
curl -s https://raw.githubusercontent.com/gouveiahenrique/flow-auth/main/Makefile -o Makefile && make install
```

This command will download the Makefile from the repository and run the command `make install` to install the Flow authentication agent.

### For Xcode (macOS only)

For the Xcode plugin, if you have already installed Copilot for Xcode, you must uninstall it before installing Flow@IDE and Flow-Auth.

For the Xcode plugin, the following command will install the Flow authentication agent and the Xcode plugin:

```
curl -s https://raw.githubusercontent.com/gouveiahenrique/flow-auth/main/Makefile -o Makefile && make install xcode
```

## Windows

To do this, follow these steps:

### Step 1: Download Flow authentication agent

Click on the following link to download the Flow authentication agent: 
```
https://github.com/gouveiahenrique/flow-auth/raw/main/authenticator/Windows/flow-auth.zip
```

### Step 2: Unzip the folder and move it to the root of the C: drive

To make the Flow authentication agent work, unzip the 'flow-auth.zip' folder and move it to the root of your C: drive. The folder path should be "C:/flow-auth".

## Step 2: Necessary settings

### [For IntelliJ and Android Studio](flow@ideIntellij.md)
### [For Xcode](flow@ideXcode.md)