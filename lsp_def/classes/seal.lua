---@meta

---@class SMODS.Seal: SMODS.GameObject
---@field atlas? string Key to the seal's atlas. 
---@field pos? table Position of the seal's sprite. 
---@field unlocked? boolean Sets the unlock state of the center. 
---@field badge_colour? table HEX color the seal badge uses. 
---@field sound? table Controls the sound that plays when the seal is applied. `sound`: Key to the sound, `per`: Sound pitch, `vol`: Sound volume. 
---@field badge_to_key? table Contains keys to each seal indexed by seal badge (`key:lower()..'_seal`). 
---@field __call? fun(self: SMODS.Seal, o: SMODS.Seal): SMODS.Seal
---@field extend? fun(self: SMODS.Seal, o: SMODS.Seal): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: SMODS.Seal, o: SMODS.Seal): table
---@field check_duplicate_key? fun(self: SMODS.Seal): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: SMODS.Seal) Registers the object. 
---@field check_dependencies? fun(self: SMODS.Seal): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: SMODS.Seal) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: SMODS.Seal, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: SMODS.Seal) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: SMODS.Seal) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: SMODS.Seal) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: SMODS.Seal) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: SMODS.Seal, key: string, obj: table, silent?: boolean): SMODS.Seal Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: SMODS.Seal, key: string): table|nil Returns an object if one matches the `key`. 
---@field loc_vars? fun(self: SMODS.Seal, info_queue: table, card: Card): table? Provides control over displaying the tooltip of this seal. 
---@field calculate? fun(self: SMODS.Seal, card: Card, context: table): table? Calculates effects based on parameters in `context`. See SMODS calculations docs for details. 
---@field get_p_dollars? fun(self: SMODS.Seal, card: Card): number? Gives money when a card with this seal is played. 
---@field draw? fun(self: SMODS.Seal, card: Card, layer: string) Draws the sprite and shader of the seal. 
---@field update? fun(self: SMODS.Seal, card: Card, dt: number) Called every frame. 
---@overload fun(self: SMODS.Seal): SMODS.Seal
SMODS.Seal = setmetatable({}, {
    __call = function(self)
        return self
    end
})