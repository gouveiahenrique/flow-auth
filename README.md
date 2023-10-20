# Plugin Installation for IntelliJ and Android Studio

Follow the steps below to install the plugin for IntelliJ and Android Studio.

## Step 1: Install the Flow authentication agent

The first step is to install the agent that will connect to the Flow portal for authentication. To do this, execute the following command in your terminal:

```
curl -s https://raw.githubusercontent.com/gouveiahenrique/flow-auth/main/Makefile -o Makefile && make install
```

This command will download the Makefile from the repository and run the command `make install` to install the Flow authentication agent.

## Step 2: Open the IDE

Open IntelliJ IDEA or Android Studio on your computer.

## Step 3: Access the plugins menu

In the main menu, go to File > Settings (on Windows and Linux) or IntelliJ IDEA > Preferences (on macOS). 

Then select Plugins on the left panel.

## Step 3.1: Add custom repository

Before installing the plugin, you need to add a custom repository. Click on the gear icon in the upper right corner of the Plugins window and select **Manage Plugin Repositories**.

Click the **+** button to add a new repository and enter the following link:

`https://raw.githubusercontent.com/gouveiahenrique/flow-auth/main/plugin/flowPlugins.xml`

Click on **OK** to add the repository and close the **Custom Plugin Repositories** window.

## Step 4: Search and install the plugin

Now, go to the **Marketplace** tab and search for "Flow@IDE" in the search bar.

Find the plugin in the list of results and click the **Install** button.

## Step 5: Restart IntelliJ or Android Studio

After installing the plugin, restart IntelliJ IDEA or Android Studio for the changes to take effect.

Congratulations! You have now successfully installed the plugin for IntelliJ and Android Studio.
