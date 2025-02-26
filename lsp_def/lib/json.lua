---@meta json

local json = {}

---@type string
--- JSON.lua library version. 
json._version = "0.1.2"

---@param val table|string|number|boolean|nil Must be a valid value to encode
---@return string
--- Encodes provided `val`. 
function json.encode(val) end

---@param str string
---@return table
--- Decodes provided `str`. 
function json.decode(str) end

return json