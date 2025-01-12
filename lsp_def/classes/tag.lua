---@meta

---@class SMODS.Tag: SMODS.GameObject
---@overload fun(self: SMODS.Tag): SMODS.Tag
SMODS.Tag = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Tag Class to extend
---@param o SMODS.Tag Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Tag:extend(o) return o end

---@param self SMODS.Tag
---Registers the object. 
function SMODS.Tag:register() end

---@param self SMODS.Tag
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Tag:process_loc_text() end

---@param self SMODS.Tag
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Tag:pre_inject_class() end

---@param self SMODS.Tag
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Tag:post_inject_class() end

---@param self SMODS.Tag
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Tag:inject_class() end

---@param self SMODS.Tag
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Tag:inject() end

---@param self SMODS.Tag
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Tag obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Tag:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Tag
---@param key string
---@return table|nil table
---Returns an object if one matches the `key`. 
function SMODS.Tag:get_obj(key) end
