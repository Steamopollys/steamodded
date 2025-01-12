---@meta

---@class SMODS.Consumable: SMODS.Center
---@field hidden? table Used for legendary consumables. 
---@overload fun(self: SMODS.Consumable): SMODS.Consumable
SMODS.Consumable = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Consumable Class to extend
---@param o SMODS.Consumable Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Consumable:extend(o) return o end

---@param self SMODS.Consumable
---Registers the object. 
function SMODS.Consumable:register() end

---@param self SMODS.Consumable
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Consumable:process_loc_text() end

---@param self SMODS.Consumable
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Consumable:pre_inject_class() end

---@param self SMODS.Consumable
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Consumable:post_inject_class() end

---@param self SMODS.Consumable
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Consumable:inject_class() end

---@param self SMODS.Consumable
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Consumable:inject() end

---@param self SMODS.Consumable
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Consumable obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Consumable:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Consumable
---@param card Card
---@param area CardArea
---@param copier? table
---Defines behaviour when this consumable is used. 
function SMODS.Consumable:use(card, area, copier) end

---@param self SMODS.Consumable
---@param card Card
---@return boolean # return `true` if the consumable should be kept. 
---Determines if the consumable is allowed to be used. 
function SMODS.Consumable:can_use(card) end

---@param self SMODS.Consumable
---@param card Card
---@return boolean # return `true` if consumable should be kept. 
---Determines if the consumable should stay after use. 
function SMODS.Consumable:keep_on_use(card) end
