---@meta

---@class SMODS.Atlas: SMODS.GameObject
---@field px? number Width of individual sprites using this atlas. 
---@field py? number Height of individual sprite using this atlas. 
---@field path? string Name of the image file, including extension. 
---@field atlas_table? string Type of atlas. `ASSET_ATLAS`: non-animated sprites, `ANIMATION_ATLAS`: animated sprites, `ASSET_IMAGES`: anything else. 
---@field frames? number Number of frames in the animation. 
---@field raw_key? boolean Sets whether the mod prefix is added to atlas key. Used for overriding vanilla sprites. 
---@field language? string Key to a language. Restricts the atlas to only when this language is enabled. 
---@field disable_mipmap? boolean Sets if the sprite is affected by the mipmap. 
---@overload fun(self: SMODS.Atlas): SMODS.Atlas
SMODS.Atlas = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Atlas Class to extend
---@param o SMODS.Atlas Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Atlas:extend(o) return o end

---@param self SMODS.Atlas
---Registers the object. 
function SMODS.Atlas:register() end

---@param self SMODS.Atlas
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Atlas:process_loc_text() end

---@param self SMODS.Atlas
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Atlas:pre_inject_class() end

---@param self SMODS.Atlas
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Atlas:post_inject_class() end

---@param self SMODS.Atlas
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Atlas:inject_class() end

---@param self SMODS.Atlas
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Atlas:inject() end

---@param self SMODS.Atlas
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Atlas obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Atlas:take_ownership(key, obj, silent) return obj end
