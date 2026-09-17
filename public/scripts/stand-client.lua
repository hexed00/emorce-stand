-- EMORCE STAND client (short bootstrap)
-- Full client is loaded from Vercel when available.
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RELAY = _G.StandRelayUrl or "ws://127.0.0.1:8787"
local FRIEND = (_G.StandFriendCode or ""):gsub("%s+", "")
print("[STAND] client bootstrap · code", FRIEND, "· relay", RELAY)
print("[STAND] load full Emorce_Stand_Client.lua from artifacts if websocket features needed")
