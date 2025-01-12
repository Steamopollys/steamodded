---@meta

---@class SMODS.Stake: SMODS.GameObject
---@overload fun(self: SMODS.Stake): SMODS.Stake
SMODS.Stake = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Stake Class to extend
---@param o SMODS.Stake Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Stake:extend(o) return o end

---@param self SMODS.Stake
---Registers the object. 
function SMODS.Stake:register() end

---@param self SMODS.Stake
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Stake:process_loc_text() end

---@param self SMODS.Stake
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Stake:pre_inject_class() end

---@param self SMODS.Stake
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Stake:post_inject_class() end

---@param self SMODS.Stake
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Stake:inject_class() end

---@param self SMODS.Stake
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Stake:inject() end

---@param self SMODS.Stake
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Stake obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Stake:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Stake
---@param key string
---@return table|nil table
---Returns an object if one matches the `key`. 
function SMODS.Stake:get_obj(key) end
