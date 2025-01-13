---@meta

---@class SMODS.UndiscoveredSprite: SMODS.GameObject
---@field key? string Key to the ObjectType this UndiscoveredSprite is made for. 
---@field atlas? string Key to the undiscovered sprite's atlas. 
---@field pos? table Position of the undiscovered sprite. 
---@field lc_atlas? string Low constrast atlas. Used when `G.SETTINGS.colourblind_option` is `false`. 
---@field hc_atlas? string High contrast atlas. Used when `G.SETTINGS.colourblind_option` is `true`.
---@field no_overlay? boolean Sets whether the floating "?" is drawn or not. 
---@overload fun(self: SMODS.UndiscoveredSprite): SMODS.UndiscoveredSprite
SMODS.UndiscoveredSprite = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.UndiscoveredSprite Class to extend
---@param o SMODS.UndiscoveredSprite Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.UndiscoveredSprite:extend(o) return o end

---@param self SMODS.UndiscoveredSprite
---Registers the object. 
function SMODS.UndiscoveredSprite:register() end

---@param self SMODS.UndiscoveredSprite
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.UndiscoveredSprite:process_loc_text() end

---@param self SMODS.UndiscoveredSprite
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.UndiscoveredSprite:pre_inject_class() end

---@param self SMODS.UndiscoveredSprite
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.UndiscoveredSprite:post_inject_class() end

---@param self SMODS.UndiscoveredSprite
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.UndiscoveredSprite:inject_class() end

---@param self SMODS.UndiscoveredSprite
---Called during `inject_class`. Injects the object into the game. 
function SMODS.UndiscoveredSprite:inject() end

---@param self SMODS.UndiscoveredSprite
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.UndiscoveredSprite obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.UndiscoveredSprite:take_ownership(key, obj, silent) return obj end
