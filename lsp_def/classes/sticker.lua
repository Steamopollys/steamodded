---@meta

---@class SMODS.Sticker: SMODS.GameObject
---@field atlas? string Key to the center's atlas. 
---@field pos? table Position of the center's sprite. 
---@field order? number Position of the sticker in collections menu. 
---@field rate? number Change of this sticker applying onto an eligible card. 
---@field hide_badge? boolean Sets if the sticker badge shows up on the card. 
---@field badge_colour? table HEX color the sticker badge uses. 
---@field default_compat? boolean Default compatibility with cards. 
---@field compat_exceptions? table Array of keys to centers that are exceptions to `default_compat`. 
---@field sets? table Array of keys to pools that this sticker is allowed to be applied on. 
---@field needs_enabled_flag? boolean Sets whether the sticker requires `G.GAME.modifiers["enable_"..key]` to be `true` before it can be applied. 
---@field __call? fun(self: table|SMODS.Sticker, o: table|SMODS.Sticker): nil|SMODS.Sticker
---@field extend? fun(self: table|SMODS.Sticker, o: table|SMODS.Sticker): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: table|SMODS.Sticker): boolean? Ensures objects already registered will not register. 
---@field check_duplicate_key? fun(self: table|SMODS.Sticker): boolean? Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: table|SMODS.Sticker) Registers the object. 
---@field check_dependencies? fun(self: table|SMODS.Sticker): boolean? Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: table|SMODS.Sticker) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: table|SMODS.Sticker, ...: any) Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: table|SMODS.Sticker) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: table|SMODS.Sticker) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: table|SMODS.Sticker) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: table|SMODS.Sticker, i?: number) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: table|SMODS.Sticker, key: string, obj: table, silent?: boolean): nil|SMODS.Sticker Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: table|SMODS.Sticker, key: string): table? Returns an object if one matches the `key`. 
---@field loc_vars? fun(self: table|SMODS.Sticker, info_queue: table, card: table|Card): table? Provides control over displaying descriptions and tooltips of the sticker's tooltip. 
---@field calculate? fun(self: table|SMODS.Sticker, card: table|Card, context: table): nil|table?, boolean?  Calculates effects based on parameters in `context`. See SMODS calculations docs for details. 
---@field should_apply? boolean|fun(self: table|SMODS.Sticker, card: Card, center: table, area: CardArea, bypass_reroll: boolean): boolean Determines if the sticker applies onto the card. If `bypass_reroll` is true, ignore RNG check. 
---@field apply? fun(self: table|SMODS.Sticker, card: table|Card, val: any) Handles applying and removing the sticker. By default, sets `card.ability[self.key] = val`. 
---@field draw? fun(self: table|SMODS.Sticker, card: table|Card, layer: string) Draws the sprite and shader of the sticker. 
---@overload fun(self: SMODS.Sticker): SMODS.Sticker
SMODS.Sticker = setmetatable({}, {
    __call = function(self)
        return self
    end
})
