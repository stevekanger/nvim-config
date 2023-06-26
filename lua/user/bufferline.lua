local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    indicator = { style = 'underline', },
    diagnostics = "nvim_lsp",
    offsets = { { filetype = "NvimTree", text = "File Explorer" } },
    highlights = {
      tab = {
        fg = "#000000",
        bg = '#010409',
      }
    }
  }
}
