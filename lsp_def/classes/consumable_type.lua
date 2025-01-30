---@meta

---@class SMODS.ConsumableType: SMODS.ObjectType
---@field primary_colour? table HEX color used as the primary color. Set as `G.C.SET[self.key]`. 
---@field secondary_colour? table HEX color used as the seconary color. Set as `G.C.SECONDARY_COLOUR[self.key]`. 
---@field collection_rows? table Array of numbers indicating how many rows and how many cards per row this ConsumableType's collection has. 
---@field shop_rate? nil|number Defining this value allows cards part of this ConsumableType to appear in the shop. Defined as `G.GAME[key:lower()..'_rate']`.  
---@field ctype_buffer? table Array of keys to all objects registered to the ConsumableType class. 
---@field __call? fun(self: table|SMODS.ConsumableType, o: table|SMODS.ConsumableType): nil|SMODS.ConsumableType
---@field extend? fun(self: table|SMODS.ConsumableType, o: table|SMODS.ConsumableType): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: table|SMODS.ConsumableType): boolean? Ensures objects already registered will not register. 
---@field check_duplicate_key? fun(self: table|SMODS.ConsumableType): boolean? Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: table|SMODS.ConsumableType) Registers the object. 
---@field check_dependencies? fun(self: table|SMODS.ConsumableType): boolean? Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: table|SMODS.ConsumableType) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: table|SMODS.ConsumableType, ...: any) Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: table|SMODS.ConsumableType) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: table|SMODS.ConsumableType) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: table|SMODS.ConsumableType) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: table|SMODS.ConsumableType, i?: number) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: table|SMODS.ConsumableType, key: string, obj: table, silent?: boolean): nil|SMODS.ConsumableType Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: table|SMODS.ConsumableType, key: string): table? Returns an object if one matches the `key`. 
---@field create_UIBox_your_collection? fun(self: table|SMODS.ConsumableType): table Creates the UIBox of the ConsumableType's collections menu. 
---@overload fun(self: SMODS.ConsumableType): SMODS.ConsumableType
SMODS.ConsumableType = setmetatable({}, {
    __call = function(self)
        return self
    end
})