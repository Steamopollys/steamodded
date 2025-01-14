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
---@field __call? fun(self: SMODS.Atlas, o: SMODS.Atlas): SMODS.Atlas
---@field extend? fun(self: SMODS.Atlas, o: SMODS.Atlas): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: SMODS.Atlas, o: SMODS.Atlas): table
---@field check_duplicate_key? fun(self: SMODS.Atlas): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: SMODS.Atlas) Registers the object. 
---@field check_dependencies? fun(self: SMODS.Atlas): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: SMODS.Atlas) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: SMODS.Atlas, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: SMODS.Atlas) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: SMODS.Atlas) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: SMODS.Atlas) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: SMODS.Atlas) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: SMODS.Atlas, key: string, obj: table, silent?: boolean): SMODS.Atlas Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: SMODS.Atlas, key: string): table|nil Returns an object if one matches the `key`. 
---@overload fun(self: SMODS.Atlas): SMODS.Atlas
SMODS.Atlas = setmetatable({}, {
    __call = function(self)
        return self
    end
})