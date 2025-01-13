---@meta

---@class SMODS.Sound: SMODS.GameObject
---@overload fun(self: SMODS.Sound): SMODS.Sound
SMODS.Sound = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Sound Class to extend
---@param o SMODS.Sound Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Sound:extend(o) return o end

---@param self SMODS.Sound
---Registers the object. 
function SMODS.Sound:register() end

---@param self SMODS.Sound
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Sound:process_loc_text() end

---@param self SMODS.Sound
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Sound:pre_inject_class() end

---@param self SMODS.Sound
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Sound:post_inject_class() end

---@param self SMODS.Sound
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Sound:inject_class() end

---@param self SMODS.Sound
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Sound:inject() end

---@param self SMODS.Sound
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Sound obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Sound:take_ownership(key, obj, silent) return obj end
