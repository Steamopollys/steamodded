---@meta

---@class SMODS.Joker: SMODS.Center
---@field eternal_compat? boolean Sets whether the Joker can have Eternal sticker. 
---@field perishable_compat? boolean Sets whether the Joker can have Perishable sticker. 
---@overload fun(self: SMODS.Joker): SMODS.Joker
SMODS.Joker = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Joker Class to extend
---@param o SMODS.Joker Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Joker:extend(o) return o end

---@param self SMODS.Joker
---Registers the object. 
function SMODS.Joker:register() end

---@param self SMODS.Joker
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Joker:process_loc_text() end

---@param self SMODS.Joker
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Joker:pre_inject_class() end

---@param self SMODS.Joker
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Joker:post_inject_class() end

---@param self SMODS.Joker
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Joker:inject_class() end

---@param self SMODS.Joker
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Joker:inject() end

---@param self SMODS.Joker
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Joker obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Joker:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Center
---@param card Card
---@return number
---Calculates reward money. 
function SMODS.Joker:calc_dollar_bonus(card) end
