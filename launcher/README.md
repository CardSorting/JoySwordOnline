# JoySword Launcher

Windows desktop launcher for the JoySword game client. It reports the three
local backend endpoints and does not start or stop server processes.

Before Repair or Launch, the launcher automatically reads and enforces the server configuration IP and ports defined in `Elsword/offline/offline.env` (falling back to loopback `127.0.0.1:9400`) in loose `Config*.lua` files and packed `data\data036.kom` bytecode. The first packed-archive change creates `data\data036.kom.azure-backup`.

## Development

```powershell
cd launcher
npm install
npm run dev
```

## Verification and packaging

```powershell
npm test
npm run build
npm run dist
```

`npm run dist` creates both NSIS installer and portable artifacts in
`launcher/release`. Game data is not bundled. The launcher discovers a
neighboring repository or lets the user select the folder that contains
`data\x2.exe`.

## Local content

Edit `resources/content/launcher-content.json` to update the offline promotional and notice feed. The manifest schema must remain `joysword.launcher-content/v1`.
