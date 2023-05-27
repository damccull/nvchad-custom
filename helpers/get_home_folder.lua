function get_home_folder()
    local undodir = "/.nvim/undodir"
    if (os.getenv('XDG_CONFIG_HOME')) then 
        return os.getenv('XDG_CONFIG_HOME') .. undodir
    elseif (os.getenv('HOME')) then
        return os.getenv('HOME') .. undodir
    elseif (os.getenv('USERPROFILE')) then
        return os.getenv('USERPROFILE') .. undodir
    end
end

