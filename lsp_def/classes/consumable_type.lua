---@meta

---@class SMODS.ConsumableType: SMODS.GameObject
---@overload fun(self: SMODS.ConsumableType): SMODS.ConsumableType
SMODS.ConsumableType = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.ConsumableType Class to extend
---@param o SMODS.ConsumableType Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.ConsumableType:extend(o) return o end

---@param self SMODS.ConsumableType
---Registers the object. 
function SMODS.ConsumableType:register() end

---@param self SMODS.ConsumableType
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.ConsumableType:process_loc_text() end

---@param self SMODS.ConsumableType
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.ConsumableType:pre_inject_class() end

---@param self SMODS.ConsumableType
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.ConsumableType:post_inject_class() end

---@param self SMODS.ConsumableType
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.ConsumableType:inject_class() end

---@param self SMODS.ConsumableType
---Called during `inject_class`. Injects the object into the game. 
function SMODS.ConsumableType:inject() end

---@param self SMODS.ConsumableType
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.ConsumableType obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.ConsumableType:take_ownership(key, obj, silent) return obj end
