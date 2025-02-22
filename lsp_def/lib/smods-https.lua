---@meta SMODS.https

local https = {}

---@class Headers
---@field [string] string The headers.

---@class HttpsOptions
---@field headers? Headers Additional headers to add to the request as key-value pairs.
---@field method? "GET"|"POST"|"HEAD"|"PUT"|"DELETE"|"PATCH" HTTP method. If absent, it's either "GET" or "POST" depending on the data field.
---@field data? string Additional data to send as application/x-www-form-urlencoded (unless specified otherwise in Content-Type header).

---Make an http(s) request. Designed to work on more platforms out of the box, compared to Balatro's shipped https modules (which is only availible on Windows).
---The API is designed to mirror that of [lua-https](https://love2d.org/wiki/lua-https).
---@param url string The URL to request
---@param options? HttpsOptions Additional options for the request.
---@return number code HTTP status code, or 0 on failure.
---@return string|nil body The response body on success. Either nil or a description of the error on failure.
---@return Headers|nil headers HTTP response headers as key-value pairs, or nil on failure.
function https.request(url, options) end

return https
