const express = require('express');
const cors = require('cors');
const { app, BrowserWindow, session } = require("electron");

const FLOW_TOKEN = "FlowToken";
const FLOW_URL = "https://flow.ciandt.com/account/sign-in";

let mainWindow;

// API
const server = express();
const port = 22450;
server.use(cors());

const router = express.Router();

app.on("ready", () => {
    createWindow();
});

router.get('/login', async (req, res) => {
    startAuthFlow();
    const token = await windowDidFinishLoadHandler();
    res.json({ "token": token });
});

server.use('/api/flow', router);

server.listen(port, () => {
    console.log(`Server running on port ${port}`);
});

// BrowserWindow Handling

const createWindow = () => {
    mainWindow = new BrowserWindow({
        width: 800,
        height: 600,
        webPreferences: {
            nodeIntegration: false,
            contextIsolation: true,
        },
        show: false,
    });
}

const windowDidFinishLoadHandler = () => {
    const authTokenPromise = new Promise((resolve, reject) => {
        mainWindow.webContents.on("did-finish-load", () => {
            session.defaultSession.cookies.get({ url: FLOW_URL }).then(cookies => {
                const token = cookies.filter(cookie => cookie.name === FLOW_TOKEN).at(0).value ?? "";
                if (token != null && token.length > 0) {
                    resolve(token);
                    mainWindow.close();
                }
            }).catch((error) => {
                console.log(`Error getting cookie: ${error}`);
            });
        });
    });
    return authTokenPromise;
}

const startAuthFlow = () => {
    mainWindow.show();
    session.defaultSession.cookies.remove(FLOW_URL, FLOW_TOKEN);
    mainWindow.loadURL(FLOW_URL);
};