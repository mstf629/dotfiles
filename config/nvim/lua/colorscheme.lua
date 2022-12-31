local pywal_status,pywal = pcall(require,'pywal')
local transparent_status,transparent = pcall(require,'transparent')
local lualine_status,lualine = pcall(require,'lualine')
local colorizer_status,colorizer = pcall(require,'colorizer')

if not pywal_status then
   return
end
   
if not transparent_status then
   return
end

if not lualine_status then
   return
end

if not colorizer_status then
   return
end

pywal.setup()
transparent.setup({enable=true})
lualine.setup({options={icons_enabled = false}})
colorizer.setup()

