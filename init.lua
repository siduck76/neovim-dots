local present, impatient = pcall(require, "impatient")

if present then
   impatient.enable_profile()
end

local core_modules = {
   "core.utils",
   "core.options",
   "core.autocmds",
   "core.mappings",
}

for _, module in ipairs(core_modules) do
   local ok, err = nvchad.prequire(module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- check if custom init.lua file exists
if vim.fn.filereadable(vim.fn.stdpath "config" .. "/lua/custom/init.lua") == 1 then
   -- try to call custom init, if not successful, show error
   local ok, err = nvchad.prequire "custom"

   if not ok then
      vim.notify("Error loading custom/init.lua\n\n" .. err)
   end

   return
end
