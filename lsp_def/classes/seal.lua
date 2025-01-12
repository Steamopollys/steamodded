---@meta

---@class SMODS.Seal: SMODS.GameObject
---@overload fun(self: SMODS.Seal): SMODS.Seal
SMODS.Seal = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Seal Class to extend
---@param o SMODS.Seal Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Seal:extend(o) return o end

---@param self SMODS.Seal
---Registers the object. 
function SMODS.Seal:register() end

---@param self SMODS.Seal
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Seal:process_loc_text() end

---@param self SMODS.Seal
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Seal:pre_inject_class() end

---@param self SMODS.Seal
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Seal:post_inject_class() end

---@param self SMODS.Seal
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Seal:inject_class() end

---@param self SMODS.Seal
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Seal:inject() end

---@param self SMODS.Seal
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Seal obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Seal:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Seal
---@param key string
---@return table|nil table
---Returns an object if one matches the `key`. 
function SMODS.Seal:get_obj(key) end
