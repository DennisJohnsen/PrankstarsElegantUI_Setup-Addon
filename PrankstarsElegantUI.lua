--[[
-- Prankstars Elegant UI - Namespaces and variables
]]--
PrankUI = "PrankUI";
MediaPath = "Interface\\AddOns\\PrankstarsElegantUI\\media\\";
FrameStrata = "HIGH"; -- BACKGROUND, LOW, MEDIUM, HIGH, DIALOG, FULLSCREEN, FULLSCREEN_DIALOG, TOOLTIP


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

-- Main frame
local UISetup = CreateFrame("Frame", PrankUI, UIParent);
UISetup:SetFrameStrata(FrameStrata);
UISetup:SetSize(1024, 256); -- W, H
UISetup:SetPoint("CENTER", UIParent, "CENTER", 0, 128); -- point, relative frame, relative point, x, y
UISetup:SetFrameLevel(1);

UISetup.bg = UISetup:CreateTexture(PrankUI..".bg", "BACKGROUND");
UISetup.bg:SetAllPoints();
UISetup.bg:SetTexture(MediaPath.."background.tga");



-- Seperator
UISetup.seperator = CreateFrame("Frame", PrankUI..".seperator", UISetup);
UISetup.seperator:SetSize(128, 128);
UISetup.seperator:SetPoint("BOTTOM", UISetup, "BOTTOM", 0, -6);
UISetup.seperator:SetFrameLevel(4);

UISetup.seperator.bg = UISetup.seperator:CreateTexture(PrankUI..".seperator.bg", "BACKGROUND");
UISetup.seperator.bg:SetAllPoints();
UISetup.seperator.bg:SetTexture(MediaPath.."seperator.tga"); 



-- Iron Horde Option
UISetup.ironhorde = CreateFrame("Frame", PrankUI..".ironhorde", UISetup);
UISetup.ironhorde:SetSize(256, 128);
UISetup.ironhorde:SetPoint("BOTTOMRIGHT", UISetup, "BOTTOM", 0, -6);
UISetup.ironhorde:SetFrameLevel(3);

UISetup.ironhorde.bg = UISetup.ironhorde:CreateTexture(PrankUI..".ironhorde.bg", "BACKGROUND");
UISetup.ironhorde.bg:SetAllPoints();
UISetup.ironhorde.bg:SetTexture(MediaPath.."styles-left.tga");

-- Iron Horde Hover
UISetup.ironhorde.hover = CreateFrame("Frame", PrankUI..".ironhorde.hover", UISetup);
UISetup.ironhorde.hover:SetSize(350, 180);
UISetup.ironhorde.hover:SetPoint("BOTTOMRIGHT", UISetup, "BOTTOM", 20, -30);
UISetup.ironhorde.hover:SetFrameLevel(2);
UISetup.ironhorde.hover:SetAlpha(0);

UISetup.ironhorde.hover.bg = UISetup.ironhorde.hover:CreateTexture(PrankUI..".ironhorde.hover.bg", "BACKGROUND");
UISetup.ironhorde.hover.bg:SetAllPoints();
UISetup.ironhorde.hover.bg:SetTexture(MediaPath.."hover-left.tga");

-- Iron Horde Button
UISetup.ironhorde.button = CreateFrame("Button", PrankUI..".ironhorde.button", UISetup.ironhorde);
UISetup.ironhorde.button:SetSize(228, 82);
UISetup.ironhorde.button:SetPoint("RIGHT", UISetup.ironhorde, "RIGHT", 0, 4);
UISetup.ironhorde.button:SetScript('OnEnter', function()
    UISetup.ironhorde.hover:SetAlpha(1);
end);
UISetup.ironhorde.button:SetScript('OnLeave', function()
    UISetup.ironhorde.hover:SetAlpha(0);
end);
UISetup.ironhorde.button:SetScript("OnClick", function()
    print("Clicked Iron Horde");
end);



-- Legion Option
UISetup.legion = CreateFrame("Frame", PrankUI..".legion", UISetup);
UISetup.legion:SetSize(256, 128);
UISetup.legion:SetPoint("BOTTOMLEFT", UISetup, "BOTTOM", 0, -6);
UISetup.legion:SetFrameLevel(3);

UISetup.legion.bg = UISetup.legion:CreateTexture(PrankUI..".legion.bg", "BACKGROUND");
UISetup.legion.bg:SetAllPoints();
UISetup.legion.bg:SetTexture(MediaPath.."styles-right.tga");

-- Legion Hover
UISetup.legion.hover = CreateFrame("Frame", PrankUI..".legion.hover", UISetup);
UISetup.legion.hover:SetSize(320, 170);
UISetup.legion.hover:SetPoint("BOTTOMLEFT", UISetup, "BOTTOM", -12, -25);
UISetup.legion.hover:SetFrameLevel(2);
UISetup.legion.hover:SetAlpha(0);

UISetup.legion.hover.bg = UISetup.legion.hover:CreateTexture(PrankUI..".legion.hover.bg", "BACKGROUND");
UISetup.legion.hover.bg:SetAllPoints();
UISetup.legion.hover.bg:SetTexture(MediaPath.."hover-right.tga");

-- Legion Button
UISetup.legion.button = CreateFrame("Button", PrankUI..".legion.button", UISetup.legion);
UISetup.legion.button:SetSize(228, 82);
UISetup.legion.button:SetPoint("RIGHT", UISetup.legion, "RIGHT", 0, 4);
UISetup.legion.button:SetScript('OnEnter', function()
    UISetup.legion.hover:SetAlpha(1);
end);
UISetup.legion.button:SetScript('OnLeave', function()
    UISetup.legion.hover:SetAlpha(0);
end);
UISetup.legion.button:SetScript("OnClick", function()
    print("Clicked Legion");
end);
