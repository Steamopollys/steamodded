---@meta

---@class SMODS.Enhancement: SMODS.Center
---@overload fun(self: SMODS.Enhancement): SMODS.Enhancement
SMODS.Enhancement = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Enhancement Class to extend
---@param o SMODS.Enhancement Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Enhancement:extend(o) return o end

---@param self SMODS.Enhancement
---Registers the object. 
function SMODS.Enhancement:register() end

---@param self SMODS.Enhancement
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Enhancement:process_loc_text() end

---@param self SMODS.Enhancement
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Enhancement:pre_inject_class() end

---@param self SMODS.Enhancement
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Enhancement:post_inject_class() end

---@param self SMODS.Enhancement
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Enhancement:inject_class() end

---@param self SMODS.Enhancement
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Enhancement:inject() end

---@param self SMODS.Enhancement
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Enhancement obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Enhancement:take_ownership(key, obj, silent) return obj end
