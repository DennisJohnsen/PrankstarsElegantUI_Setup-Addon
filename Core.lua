--[[
-- Prankstars Elegant UI - Namespace
]]--
PrankUI = "PrankUI"


--[[
    Lists of TODO:
    - The setup window
        - Background, with two buttons that has an hover effect behind the two options

    - Some kind of way to open the setup window when typing "/prankui"

    - Simple and easy way of adding profiles/change addon db var when an style is clicked
        - Also reloads UI after

    - When running /prankui on a toon that allready has the UI setup, it should be able to click the same, or a different style.
]]--

--[[
    Prankstars Elegant UI - Setup window
]]--
local UIConfig = CreateFrame("Frame", PrankUI.."_Setup", UIParent)
UIConfig:SetSize(1024, 256) -- width, height
UIConfig:SetPoint("CENTER", UIParent, "CENTER") -- point, relative frame, relative point, x, y