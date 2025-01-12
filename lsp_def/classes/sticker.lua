---@meta

---@class SMODS.Sticker: SMODS.GameObject
---@overload fun(self: SMODS.Sticker): SMODS.Sticker
SMODS.Sticker = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Sticker Class to extend
---@param o SMODS.Sticker Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Sticker:extend(o) return o end

---@param self SMODS.Sticker
---Registers the object. 
function SMODS.Sticker:register() end

---@param self SMODS.Sticker
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Sticker:process_loc_text() end

---@param self SMODS.Sticker
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Sticker:pre_inject_class() end

---@param self SMODS.Sticker
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Sticker:post_inject_class() end

---@param self SMODS.Sticker
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Sticker:inject_class() end

---@param self SMODS.Sticker
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Sticker:inject() end

---@param self SMODS.Sticker
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Sticker obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Sticker:take_ownership(key, obj, silent) return obj end
