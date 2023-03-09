local status_ok, colorizer = pcall(require, "colorizet")
if not status_ok then
   return
end
colorizer.setup()
