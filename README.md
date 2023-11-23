# Plugin Installation for IntelliJ and Android Studio

Follow the steps below to install the plugin for IntelliJ and Android Studio.

## Step 1: Install the Flow authentication agent

The first step is to install the agent that will connect to the Flow portal for authentication.

## Linux and macOS

To do this, execute the following command in your terminal:

```
curl -s https://raw.githubusercontent.com/gouveiahenrique/flow-auth/main/Makefile -o Makefile && make install
```

This command will download the Makefile from the repository and run the command `make install` to install the Flow authentication agent.

## Windows

To do this, follow these steps:

### Step 1: Download Flow authentication agent

Click on the following link to download the Flow authentication agent: 
```
https://github.com/gouveiahenrique/flow-auth/raw/main/authenticator/Windows/flow-auth.zip
```

### Step 2: Unzip the folder and move it to the root of the C: drive

To make the Flow authentication agent work, unzip the 'flow-auth.zip' folder and move it to the root of your C: drive. The folder path should be "C:/flow-auth".


## Step 2: Open the IDE

Open IntelliJ IDEA or Android Studio on your computer.

## Step 3: Access the plugins menu

In the main menu, go to File > Settings (on Windows and Linux) or IntelliJ IDEA > Preferences (on macOS). 

Then select Plugins on the left panel.

## Step 4: Search and install the plugin

Now, go to the **Marketplace** tab and search for "Flow@IDE" in the search bar.

Find the plugin in the list of results and click the **Install** button.

## Step 5: Restart IntelliJ or Android Studio

After installing the plugin, restart IntelliJ IDEA or Android Studio for the changes to take effect.

Congratulations! You have now successfully installed the plugin for IntelliJ and Android Studio.
