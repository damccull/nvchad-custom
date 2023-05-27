OPERATING_SYSTEMS = {
    windows = "Windows",
    linux = "Linux",
    osx = "OSX",
}

local function starts_with(str, start)
   return str:sub(1,#start) == start
end

function Get_Os()
    local osname = vim.loop.os_uname().sysname
    if (starts_with(osname, "Windows")) then
        return OPERATING_SYSTEMS.windows
    elseif (starts_with(osname, "Linux")) then
        return OPERATING_SYSTEMS.linux
    elseif (starts_with(osname, "OSX")) then
        return OPERATING_SYSTEMS.osx
    end
end
