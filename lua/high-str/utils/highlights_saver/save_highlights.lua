local M = {}

local list_cords = {}
local tbl_utils = require("high-str.utils.general.tables")

function M.get_highlights()
	return list_cords
end

function M.save(beg_line, beg_col, end_line, end_col)
	local file = vim.fn.expand('%:p')

	if not (tbl_utils.has_element(list_cords, file, "value")) then
		list_cords[file] = {}
	end

	list_cords[file]["highlight_" .. #list_cords+1] = {
		beg_line = beg_line,
		beg_col = beg_col,
		end_line = end_line,
		end_col = end_col
	}

	table.insert(list_cords, "test")

	print(#list_cords)
end

return M