---@meta

---@class SMODS.Voucher: SMODS.Center
---@field requires? table Array of keys to other voucher. This voucher will not appear if those are not redeemed.  
---@overload fun(self: SMODS.Voucher): SMODS.Voucher
SMODS.Voucher = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Voucher Class to extend
---@param o SMODS.Voucher Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Voucher:extend(o) return o end

---@param self SMODS.Voucher
---Registers the object. 
function SMODS.Voucher:register() end

---@param self SMODS.Voucher
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Voucher:process_loc_text() end

---@param self SMODS.Voucher
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Voucher:pre_inject_class() end

---@param self SMODS.Voucher
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Voucher:post_inject_class() end

---@param self SMODS.Voucher
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Voucher:inject_class() end

---@param self SMODS.Voucher
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Voucher:inject() end

---@param self SMODS.Voucher
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Voucher obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Voucher:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Voucher
---Defines behaviour when this voucher is redeemed. 
function SMODS.Voucher:redeem() end
