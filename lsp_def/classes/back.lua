---@meta

---@class SMODS.Back: SMODS.Center
---@overload fun(self: SMODS.Back): SMODS.Back
SMODS.Back = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Back Class to extend
---@param o SMODS.Back Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Back:extend(o) return o end

---@param self SMODS.Back
---Registers the object. 
function SMODS.Back:register() end

---@param self SMODS.Back
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Back:process_loc_text() end

---@param self SMODS.Back
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Back:pre_inject_class() end

---@param self SMODS.Back
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Back:post_inject_class() end

---@param self SMODS.Back
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Back:inject_class() end

---@param self SMODS.Back
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Back:inject() end

---@param self SMODS.Back
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Back obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Back:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Back
---@param back Back
---Applies modifiers at the start of a run. 
function SMODS.Back:apply(back) end

---@param self SMODS.Back
---This function is deprecated, use `SMODS.Back:calculate()` instead
---@deprecated
function SMODS.Back:trigger_effect(args) end
