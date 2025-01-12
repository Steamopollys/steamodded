---@meta

---@class SMODS.Edition: SMODS.Center
---@overload fun(self: SMODS.Edition): SMODS.Edition
SMODS.Edition = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Edition Class to extend
---@param o SMODS.Edition Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Edition:extend(o) return o end

---@param self SMODS.Edition
---Registers the object. 
function SMODS.Edition:register() end

---@param self SMODS.Edition
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Edition:process_loc_text() end

---@param self SMODS.Edition
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Edition:pre_inject_class() end

---@param self SMODS.Edition
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Edition:post_inject_class() end

---@param self SMODS.Edition
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Edition:inject_class() end

---@param self SMODS.Edition
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Edition:inject() end

---@param self SMODS.Edition
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Edition obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Edition:take_ownership(key, obj, silent) return obj end
