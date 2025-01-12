---@meta

---@class SMODS.Suit: SMODS.GameObject
---@overload fun(self: SMODS.Suit): SMODS.Suit
SMODS.Suit = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Suit Class to extend
---@param o SMODS.Suit Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Suit:extend(o) return o end

---@param self SMODS.Suit
---Registers the object. 
function SMODS.Suit:register() end

---@param self SMODS.Suit
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Suit:process_loc_text() end

---@param self SMODS.Suit
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Suit:pre_inject_class() end

---@param self SMODS.Suit
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Suit:post_inject_class() end

---@param self SMODS.Suit
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Suit:inject_class() end

---@param self SMODS.Suit
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Suit:inject() end

---@param self SMODS.Suit
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Suit obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Suit:take_ownership(key, obj, silent) return obj end
