local status_ok, gitlinker = pcall(require, "gitlinker")
if not status_ok then
	return
end

gitlinker.setup({
	-- setting mappings = nil does not work: https://github.com/ruifm/gitlinker.nvim/issues/48
    mappings = "<Nop>",
})