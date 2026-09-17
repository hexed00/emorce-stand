--[[
  EMORCE STAND loader — execute on ALT / bot
  Optional:
    _G.BotOwner = "main_username"
    _G.StandFriendCode = "1234 5678 9012"
    _G.StandRelayUrl = "wss://your-relay"
    _G.EmorceScriptBase = "https://emorce-stand.vercel.app"
]]
local base = _G.EmorceScriptBase or "https://emorce-stand.vercel.app"

local function httpGet(url)
  local req = (syn and syn.request) or (http and http.request) or http_request or request
  if type(req) == "function" then
    local res = req({ Url = url, Method = "GET" })
    if res and (res.StatusCode == 200 or res.Success) then
      return res.Body or res.body
    end
    error("http fail " .. tostring(res and (res.StatusCode or res.StatusMessage)))
  end
  return game:HttpGet(url)
end

local function runUrl(path)
  local url = base:gsub("/$", "") .. path
  print("[EMORCE] fetching", url)
  local src = httpGet(url)
  if type(src) ~= "string" or #src < 50 then
    error("empty script: " .. path)
  end
  local fn, err = loadstring(src)
  if not fn then
    error("compile fail " .. path .. ": " .. tostring(err))
  end
  fn()
  print("[EMORCE] loaded", path)
end

runUrl("/scripts/spectral.lua")
task.wait(0.35)
runUrl("/scripts/stand-client.lua")
print("[EMORCE] STAND injection complete")
