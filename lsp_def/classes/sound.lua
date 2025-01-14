---@meta

---@class SMODS.Sound: SMODS.GameObject
---@field path? string Name of the sound file, including extension. 
---@field pitch? number Pitch for music tracks. 
---@field volume? number Volume for music tracks. 
---@field replace? string|table Replaces specific sound with this sound whenever played. Behaves like `SMODS.Sound:create_replace_sound()`. 
---@field sync? false|table Configured syncing for music tracks. Setting to `false` prevents the music track from syncing with anything. 
---@overload fun(self: SMODS.Sound): SMODS.Sound
SMODS.Sound = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Sound Class to extend
---@param o SMODS.Sound Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Sound:extend(o) return o end

---@param self SMODS.Sound
---Registers the object. 
function SMODS.Sound:register() end

---@param self SMODS.Sound
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Sound:process_loc_text() end

---@param self SMODS.Sound
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Sound:pre_inject_class() end

---@param self SMODS.Sound
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Sound:post_inject_class() end

---@param self SMODS.Sound
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Sound:inject_class() end

---@param self SMODS.Sound
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Sound:inject() end

---@param self SMODS.Sound
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Sound obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Sound:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Sound
---@return nil|number # Returning any truthy value will be converted to 0. 
---Called each frame. Determines what music track to play. Music track with the highest number is played. 
function SMODS.Sound:select_music_track() end

---@param self SMODS.Sound
---@param replace string|table If string, indefinitely replace the sound. If table, the sound key is in `replace.key`, total times to replace in `replace.times`, and extra args in `replace.args`. 
---Replaces another sound with this one. 
function SMODS.Sound:create_replace_sound(replace) end

---@param self SMODS.Sound
---@param key string
---@param times nil|number
---Supress sounds with the given sound code `times` amount of times or indefinitely. 
function SMODS.Sound:create_stop_sound(key, times) end

---@param self SMODS.Sound
---Registers all sound files of the current mod. 
function SMODS.Sound:registr_global() end

---@param self SMODS.Sound
---@return nil|string
---Polls `SMODS.Sound:select_music_track` and returns the key to the music to play.
function SMODS.Sound:get_current_music() end
