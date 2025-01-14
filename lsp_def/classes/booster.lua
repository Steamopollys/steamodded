---@meta

---@class SMODS.Booster: SMODS.Center
---@field group_key? string Key to the group name. Grabs from `G.localization.misc.dictionary[group_key]`. 
---@field draw_hand? boolean Sets if playing cards are drawn when booster pack is opened. 
---@field kind? string Groups pack types together. For example, this can be used in `get_pack()` to generate a booster pack of a specific type. 
---@field weight? number Weight of the booster pack. 
---@field __call? fun(self: SMODS.Booster, o: SMODS.Booster): SMODS.Booster
---@field extend? fun(self: SMODS.Booster, o: SMODS.Booster): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: SMODS.Booster, o: SMODS.Booster): table
---@field check_duplicate_key? fun(self: SMODS.Booster): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: SMODS.Booster) Registers the object. 
---@field check_dependencies? fun(self: SMODS.Booster): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: SMODS.Booster) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: SMODS.Booster, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: SMODS.Booster) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: SMODS.Booster) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: SMODS.Booster) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: SMODS.Booster) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: SMODS.Booster, key: string, obj: table, silent?: boolean): SMODS.Booster Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: SMODS.Booster, key: string): table|nil Returns an object if one matches the `key`. 
---@field create_card? fun(self: SMODS.Booster, card: Card, i: number): table|Card Creates the cards inside the booster pack. Returning a table will create a Card through `SMODS.create_card`. 
---@field update_pack? fun(self: SMODS.Booster, dt: number) Handles booster pack UI when opened. 
---@field ease_background_colour? fun(self: SMODS.Booster) Changes background colour when booster pack is opened. 
---@field particles? fun(self: SMODS.Booster) Handles ambient particle effects when booster pack is opened. 
---@field create_UIBox? fun(self: SMODS.Booster): table Returns booster pack UIBox. 
---@field take_ownership_by_kind? fun(self: SMODS.Booster, kind: string, obj: table, silent?: boolean) Finds all booster packs with matching `kind` and applies `SMODS.Booster:take_ownership()` to each one with `obj` and `silent` args passed through. 
---@overload fun(self: SMODS.Booster): SMODS.Booster
SMODS.Booster = setmetatable({}, {
    __call = function(self)
        return self
    end
})