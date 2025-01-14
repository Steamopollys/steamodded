---@meta

---@class SMODS.Sound: SMODS.GameObject
---@field path? string Name of the sound file, including extension. 
---@field pitch? number Pitch for music tracks. 
---@field volume? number Volume for music tracks. 
---@field replace? string|table Replaces specific sound with this sound whenever played. Behaves like `SMODS.Sound:create_replace_sound()`. 
---@field sync? false|table Configured syncing for music tracks. Setting to `false` prevents the music track from syncing with anything. 
---@field __call? fun(self: table, o: SMODS.Sound): SMODS.Sound
---@field extend? fun(self: table, o: SMODS.Sound): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: table, o: SMODS.Sound): table
---@field check_duplicate_key? fun(self: table): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: table) Registers the object. 
---@field check_dependencies? fun(self: table): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: table) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: table, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: table) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: table) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: table) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: table) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: table, key: string, obj: table, silent?: boolean): SMODS.Sound Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: table, key: string): table|nil Returns an object if one matches the `key`. 
---@field select_music_track? fun(self: table): nil|number Called each frame. Determines what music track to play. Music track with the highest number is played. 
---@field create_replace_sound? fun(self: table, replace: string|table) Replaces another sound with this one. 
---@field create_stop_sound? fun(self: table, key: string, times: nil|number) Supress sounds with the given sound code `times` amount of times or indefinitely. 
---@field register_global? fun(self: table) Registers all sound files of the current mod. 
---@field get_current_music? fun(self: table): nil|string Polls `SMODS.Sound:select_music_track` and returns the key to the music to play.
---@overload fun(self: SMODS.Sound): SMODS.Sound
SMODS.Sound = setmetatable({}, {
    __call = function(self)
        return self
    end
})