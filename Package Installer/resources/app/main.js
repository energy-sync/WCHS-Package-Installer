//Dawson Vilamaa 8/8/2019
const { app, BrowserWindow } = require('electron')

var window

function createWindow () {
  window = new BrowserWindow({
    width: 900,
    height: 790,
    webPreferences: {
      nodeIntegration: true
    }
  })

  window.setMenu(null);
  window.loadFile('index.html')

  window.webContents.openDevTools()

  window.on('closed', () => {
    window = null
  })
}

app.on('ready', createWindow)

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit()
  }
})

app.on('activate', () => {
  if (window === null) {
    createWindow()
  }
})