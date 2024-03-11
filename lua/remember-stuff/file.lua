local File = {}

-- only mac stuff ~/Library/Caches/plugin_name
local plugin_directory = "~/Library/Caches/Remember-stuff"

local function exists(file)
    local ok, err, code = os.rename(file, file)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    return ok, err
end

--- Check if a directory exists in this path
local function isdir(path)
    -- "/" works on both Unix and Windows
    return exists(path .. "/")
end

function File:setup()
    if isdir(plugin_directory) then
        print("Current directory exists" .. plugin_directory)
    else
        os.execute("mkdir " .. plugin_directory)
        print("Created directiory " .. plugin_directory)
    end
end

-- function File:Create_file(file)
--     local file_name = current_directory .. "notes.txt"
--
--     local file = io.open(file_name, "w")
--
--     -- file:write("Empty notes file")
--     -- file:close()
--
--     -- print("Created file notes.txt")
-- end

return File
