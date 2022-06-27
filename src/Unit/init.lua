local RunService = game:GetService("RunService")

local T = require(script.T)

local IS_SERVER : boolean = RunService:IsServer()

if IS_SERVER then
    return require(script.Server) :: T.UnitServer
else
    script.Server:Destroy()
    return require(script.Client) :: T.UnitClient
end