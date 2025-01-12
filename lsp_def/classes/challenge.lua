---@meta

---@class SMODS.Challenge: SMODS.GameObject
---@overload fun(self: SMODS.Challenge): SMODS.Challenge
SMODS.Challenge = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Challenge Class to extend
---@param o SMODS.Challenge Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Challenge:extend(o) return o end

---@param self SMODS.Challenge
---Registers the object. 
function SMODS.Challenge:register() end

---@param self SMODS.Challenge
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Challenge:process_loc_text() end

---@param self SMODS.Challenge
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Challenge:pre_inject_class() end

---@param self SMODS.Challenge
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Challenge:post_inject_class() end

---@param self SMODS.Challenge
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Challenge:inject_class() end

---@param self SMODS.Challenge
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Challenge:inject() end

---@param self SMODS.Challenge
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Challenge obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Challenge:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Challenge
---@param key string
---@return table|nil table
---Returns an object if one matches the `key`. 
function SMODS.Challenge:get_obj(key) end
