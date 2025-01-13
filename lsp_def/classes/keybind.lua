---@meta

---@class SMODS.Keybind: SMODS.GameObject
---@field key_pressed? string Required key to press for this keybind to activate. Keycodes are documented [here](https://love2d.org/wiki/KeyConstant)
---@field event? string Defines when the keybind should trigger. "pressed": on key press, "released": on key release, "held": on key hold for specified amount of time. 
---@field held_duration? number How long the keybind needs to be pressed before activation. Only active if `event = held`. 
---@field held_keys? table Array of keycodes additionally required to be pressed for keybind to activate. 
---@overload fun(self: SMODS.Keybind): SMODS.Keybind
SMODS.Keybind = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Keybind Class to extend
---@param o SMODS.Keybind Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Keybind:extend(o) return o end

---@param self SMODS.Keybind
---Registers the object. 
function SMODS.Keybind:register() end

---@param self SMODS.Keybind
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Keybind:process_loc_text() end

---@param self SMODS.Keybind
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Keybind:pre_inject_class() end

---@param self SMODS.Keybind
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Keybind:post_inject_class() end

---@param self SMODS.Keybind
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Keybind:inject_class() end

---@param self SMODS.Keybind
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Keybind:inject() end

---@param self SMODS.Keybind
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Keybind obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Keybind:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Keybind
---Called when the keybind is triggered. 
function SMODS.Keybind:action() end
