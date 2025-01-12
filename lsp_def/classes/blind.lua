---@meta

---@class SMODS.Blind: SMODS.GameObject
---@overload fun(self: SMODS.Blind): SMODS.Blind
SMODS.Blind = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Blind Class to extend
---@param o SMODS.Blind Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Blind:extend(o) return o end

---@param self SMODS.Blind
---Registers the object. 
function SMODS.Blind:register() end

---@param self SMODS.Blind
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Blind:process_loc_text() end

---@param self SMODS.Blind
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Blind:pre_inject_class() end

---@param self SMODS.Blind
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Blind:post_inject_class() end

---@param self SMODS.Blind
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Blind:inject_class() end

---@param self SMODS.Blind
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Blind:inject() end

---@param self SMODS.Blind
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Blind obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Blind:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Blind
---@param key string
---@return table|nil table
---Returns an object if one matches the `key`. 
function SMODS.Blind:get_obj(key) end
