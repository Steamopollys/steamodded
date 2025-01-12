---@meta

---@class SMODS.Booster: SMODS.Center
---@field group_key? string Key to the group name. Grabs from `G.localization.misc.dictionary[group_key]`. 
---@field draw_hand? boolean Sets if playing cards are drawn when booster pack is opened. 
---@field kind? string Groups pack types together. For example, this can be used in `get_pack()` to generate a booster pack of a specific type. 
---@field weight? number Weight of the booster pack. 
---@overload fun(self: SMODS.Booster): SMODS.Booster
SMODS.Booster = setmetatable({}, {
    __call = function(self)
        return self
    end
})
---@param self SMODS.Booster Class to extend
---@param o SMODS.Booster Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Booster:extend(o) return o end

---@param self SMODS.Booster
---Registers the object. 
function SMODS.Booster:register() end

---@param self SMODS.Booster
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Booster:process_loc_text() end

---@param self SMODS.Booster
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Booster:pre_inject_class() end

---@param self SMODS.Booster
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Booster:post_inject_class() end

---@param self SMODS.Booster
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Booster:inject_class() end

---@param self SMODS.Booster
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Booster:inject() end

---@param self SMODS.Booster
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Booster obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Booster:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Booster
---@param card Card
---@param i number Position the card will be in after generation. 
---@return table|Card # Returning a table will create a Card through `SMODS.create_card`. 
---Creates the cards inside the booster pack. 
function SMODS.Booster:create_card(card, i) end

---@param self SMODS.Booster
---@param dt number delta-time
---Handles booster pack UI when opened. 
function SMODS.Booster:update_pack(dt) end

---@param self SMODS.Booster
---Changes background colour when booster pack is opened. 
function SMODS.Booster:ease_background_colour() end

---@param self SMODS.Booster
---Handles ambient particle effects when booster pack is opened. 
function SMODS.Booster:particles() end

---@param self SMODS.Booster
---@return table UIBox
---Returns the booster pack's UIBox. 
function SMODS.Booster:create_UIBox() end

---@param self SMODS.Booster
---@param kind string
---@param obj table
---@param silent? boolean
---Finds all booster packs with matching `kind` and applies `SMODS.Booster:take_ownership()` to each one with `obj` and `silent` args passed through. 
function SMODS.Booster:take_ownership_by_kind(kind, obj, silent) end
