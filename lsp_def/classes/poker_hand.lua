---@meta

---@class SMODS.PokerHand: SMODS.GameObject
---@overload fun(self: SMODS.PokerHand): SMODS.PokerHand
SMODS.PokerHand = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.PokerHand Class to extend
---@param o SMODS.PokerHand Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.PokerHand:extend(o) return o end

---@param self SMODS.PokerHand
---Registers the object. 
function SMODS.PokerHand:register() end

---@param self SMODS.PokerHand
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.PokerHand:process_loc_text() end

---@param self SMODS.PokerHand
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.PokerHand:pre_inject_class() end

---@param self SMODS.PokerHand
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.PokerHand:post_inject_class() end

---@param self SMODS.PokerHand
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.PokerHand:inject_class() end

---@param self SMODS.PokerHand
---Called during `inject_class`. Injects the object into the game. 
function SMODS.PokerHand:inject() end

---@param self SMODS.PokerHand
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.PokerHand obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.PokerHand:take_ownership(key, obj, silent) return obj end

---@class SMODS.PokerHandPart: SMODS.GameObject
SMODS.PokerHandPart = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.PokerHandPart Class to extend
---@param o SMODS.PokerHandPart Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.PokerHandPart:extend(o) return o end

---@param self SMODS.PokerHandPart
---Registers the object. 
function SMODS.PokerHandPart:register() end

---@param self SMODS.PokerHandPart
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.PokerHandPart:process_loc_text() end

---@param self SMODS.PokerHandPart
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.PokerHandPart:pre_inject_class() end

---@param self SMODS.PokerHandPart
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.PokerHandPart:post_inject_class() end

---@param self SMODS.PokerHandPart
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.PokerHandPart:inject_class() end

---@param self SMODS.PokerHandPart
---@param hand table 
---@return table hand Array of all played cards. 
---Returns array of cards that are a part of this hand. 
function SMODS.PokerHandPart:func(hand) return {} end
