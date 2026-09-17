# EMORCE STAND

Remote stand control + script injection CDN.

## Inject (alt)
```lua
_G.BotOwner = "main"
_G.StandFriendCode = "0000 0000 0000"
_G.StandRelayUrl = "wss://your-relay"
_G.EmorceScriptBase = "https://emorce-stand.vercel.app"
loadstring(game:HttpGet("https://emorce-stand.vercel.app/scripts/loader.lua"))()
```

## Relay
```bash
cd relay && npm i && node server.js
```
