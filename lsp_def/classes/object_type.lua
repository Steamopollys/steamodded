---@meta

---@class SMODS.ObjectType: SMODS.GameObject
---@field default? string Key to fallback center when object pool is empty. 
---@field cards? table List of keys to centers to auto-inject into the pool. Formatted as `{ ["j_joker"] = true }`. 
---@field rarities? table Array of tables representing rarities. Each table must contain the key to the rarity, with an optional arg of `weight` (omitting uses rarity default, see `SMODS.Rarity.default_weight`). 
---@field __call? fun(self: table|SMODS.ObjectType, o: SMODS.ObjectType): SMODS.ObjectType
---@field extend? fun(self: table|SMODS.ObjectType, o: SMODS.ObjectType): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: table|SMODS.ObjectType, o: SMODS.ObjectType): table
---@field check_duplicate_key? fun(self: table|SMODS.ObjectType): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: table|SMODS.ObjectType) Registers the object. 
---@field check_dependencies? fun(self: table|SMODS.ObjectType): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: table|SMODS.ObjectType) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: table|SMODS.ObjectType, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: table|SMODS.ObjectType) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: table|SMODS.ObjectType) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: table|SMODS.ObjectType) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: table|SMODS.ObjectType) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: table|SMODS.ObjectType, key: string, obj: table, silent?: boolean): SMODS.ObjectType Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: table|SMODS.ObjectType, key: string): table|nil Returns an object if one matches the `key`. 
---@field inject_card? fun(self: table|SMODS.ObjectType, center: table) Injects the center into the ObjectType pools.
---@field remove_card? fun(self: table|SMODS.ObjectType, center: table) Removes the center from ObjectType pools. 
---@overload fun(self: SMODS.ObjectType): SMODS.ObjectType
SMODS.ObjectType = setmetatable({}, {
    __call = function(self)
        return self
    end
})