---@meta

---@class SMODS.Shader: SMODS.GameObject
---@overload fun(self: SMODS.Shader): SMODS.Shader
SMODS.Shader = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Shader Class to extend
---@param o SMODS.Shader Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Shader:extend(o) return o end

---@param self SMODS.Shader
---Registers the object. 
function SMODS.Shader:register() end

---@param self SMODS.Shader
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Shader:process_loc_text() end

---@param self SMODS.Shader
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Shader:pre_inject_class() end

---@param self SMODS.Shader
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Shader:post_inject_class() end

---@param self SMODS.Shader
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Shader:inject_class() end

---@param self SMODS.Shader
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Shader:inject() end

---@param self SMODS.Shader
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Shader obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Shader:take_ownership(key, obj, silent) return obj end
