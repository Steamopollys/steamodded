---@meta

---@class SMODS.DeckSkin: SMODS.GameObject
---@overload fun(self: SMODS.DeckSkin): SMODS.DeckSkin
SMODS.DeckSkin = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.DeckSkin Class to extend
---@param o SMODS.DeckSkin Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.DeckSkin:extend(o) return o end

---@param self SMODS.DeckSkin
---Registers the object. 
function SMODS.DeckSkin:register() end

---@param self SMODS.DeckSkin
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.DeckSkin:process_loc_text() end

---@param self SMODS.DeckSkin
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.DeckSkin:pre_inject_class() end

---@param self SMODS.DeckSkin
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.DeckSkin:post_inject_class() end

---@param self SMODS.DeckSkin
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.DeckSkin:inject_class() end

---@param self SMODS.DeckSkin
---Called during `inject_class`. Injects the object into the game. 
function SMODS.DeckSkin:inject() end

---@param self SMODS.DeckSkin
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.DeckSkin obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.DeckSkin:take_ownership(key, obj, silent) return obj end
