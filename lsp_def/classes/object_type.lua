---@meta

---@class SMODS.ObjectType: SMODS.GameObject
---@overload fun(self: SMODS.ObjectType): SMODS.ObjectType
SMODS.ObjectType = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.ObjectType Class to extend
---@param o SMODS.ObjectType Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.ObjectType:extend(o) return o end

---@param self SMODS.ObjectType
---Registers the object. 
function SMODS.ObjectType:register() end

---@param self SMODS.ObjectType
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.ObjectType:process_loc_text() end

---@param self SMODS.ObjectType
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.ObjectType:pre_inject_class() end

---@param self SMODS.ObjectType
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.ObjectType:post_inject_class() end

---@param self SMODS.ObjectType
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.ObjectType:inject_class() end

---@param self SMODS.ObjectType
---Called during `inject_class`. Injects the object into the game. 
function SMODS.ObjectType:inject() end

---@param self SMODS.ObjectType
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.ObjectType obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.ObjectType:take_ownership(key, obj, silent) return obj end
