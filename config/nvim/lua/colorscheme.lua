local colorizer_status,colorizer = pcall(require,'colorizer')


if not lualine_status then
   return
end

if not colorizer_status then
   return
end

colorizer.setup()

