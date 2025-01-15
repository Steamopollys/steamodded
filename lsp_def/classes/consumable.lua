---@meta

---@class SMODS.Consumable: SMODS.Center
---@field hidden? table Used for legendary consumables. 
---@field __call? fun(self: table|SMODS.Consumable, o: table|SMODS.Consumable): SMODS.Consumable
---@field extend? fun(self: table|SMODS.Consumable, o: table|SMODS.Consumable): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: table|SMODS.Consumable): nil|boolean?Ensures objects already registered will not register. 
---@field check_duplicate_key? fun(self: table|SMODS.Consumable): nil|boolean?Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: table|SMODS.Consumable) Registers the object. 
---@field check_dependencies? fun(self: table|SMODS.Consumable): nil|boolean?Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: table|SMODS.Consumable) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: table|SMODS.Consumable, ...: any) Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: table|SMODS.Consumable) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: table|SMODS.Consumable) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: table|SMODS.Consumable) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: table|SMODS.Consumable, i?: number) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: table|SMODS.Consumable, key: string, obj: table, silent?: boolean): nil|SMODS.Consumable Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: table|SMODS.Consumable, key: string): table|nil Returns an object if one matches the `key`. 
---@field use? fun(self: table|SMODS.Consumable, card: table|Card, area: table|CardArea, copier?: table) Defines behaviour when this consumable is used. 
---@field can_use? fun(self: table|SMODS.Consumable, card: table|Card): nil|boolean?Return `true` if the consumable is allowed to be used. 
---@field keep_on_use? fun(self: table|SMODS.Consumable, card: table|Card): nil|boolean?Return `true` if the consumable should stay after use. 
---@overload fun(self: SMODS.Consumable): SMODS.Consumable
SMODS.Consumable = setmetatable({}, {
    __call = function(self)
        return self
    end
})