---@meta

---@class SMODS.Rarity: SMODS.GameObject
---@overload fun(self: SMODS.Rarity): SMODS.Rarity
SMODS.Rarity = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Rarity Class to extend
---@param o SMODS.Rarity Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Rarity:extend(o) return o end

---@param self SMODS.Rarity
---Registers the object. 
function SMODS.Rarity:register() end

---@param self SMODS.Rarity
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Rarity:process_loc_text() end

---@param self SMODS.Rarity
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Rarity:pre_inject_class() end

---@param self SMODS.Rarity
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Rarity:post_inject_class() end

---@param self SMODS.Rarity
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Rarity:inject_class() end

---@param self SMODS.Rarity
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Rarity:inject() end

---@param self SMODS.Rarity
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Rarity obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Rarity:take_ownership(key, obj, silent) return obj end
