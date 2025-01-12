---@meta

---@class SMODS.Achievement: SMODS.GameObject
---@overload fun(self: SMODS.Achievement): SMODS.Achievement
SMODS.Achievement = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Achievement Class to extend
---@param o SMODS.Achievement Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Achievement:extend(o) return o end

---@param self SMODS.Achievement
---Registers the object. 
function SMODS.Achievement:register() end

---@param self SMODS.Achievement
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Achievement:process_loc_text() end

---@param self SMODS.Achievement
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Achievement:pre_inject_class() end

---@param self SMODS.Achievement
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Achievement:post_inject_class() end

---@param self SMODS.Achievement
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Achievement:inject_class() end

---@param self SMODS.Achievement
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Achievement:inject() end

---@param self SMODS.Achievement
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Achievement obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Achievement:take_ownership(key, obj, silent) return obj end
