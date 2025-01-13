---@meta

---@class SMODS.Language: SMODS.GameObject
---@field label? string Label displayed in the language selection screen. 
---@field font? number|table Font the in-game text uses. Using the number 1-9 uses vanilla fonts, and specifying a table uses custom font. See [SMODS.Language](https://github.com/Steamodded/smods/wiki/SMODS.Language) docs for details.
---@field loc_key? string Key to another language. Treats it as a base, keeping any unchanged localization strings intact and adding changes to the language and fonts. 
---@overload fun(self: SMODS.Language): SMODS.Language
SMODS.Language = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Language Class to extend
---@param o SMODS.Language Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Language:extend(o) return o end

---@param self SMODS.Language
---Registers the object. 
function SMODS.Language:register() end

---@param self SMODS.Language
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Language:process_loc_text() end

---@param self SMODS.Language
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Language:pre_inject_class() end

---@param self SMODS.Language
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Language:post_inject_class() end

---@param self SMODS.Language
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Language:inject_class() end

---@param self SMODS.Language
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Language:inject() end

---@param self SMODS.Language
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Language obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Language:take_ownership(key, obj, silent) return obj end
