---@meta

---@class SMODS.Edition: SMODS.Center
---@field __call? fun(self: SMODS.Edition, o: SMODS.Edition): SMODS.Edition
---@field extend? fun(self: SMODS.Edition, o: SMODS.Edition): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: SMODS.Edition, o: SMODS.Edition): table
---@field check_duplicate_key? fun(self: SMODS.Edition): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: SMODS.Edition) Registers the object. 
---@field check_dependencies? fun(self: SMODS.Edition): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: SMODS.Edition) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: SMODS.Edition, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: SMODS.Edition) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: SMODS.Edition) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: SMODS.Edition) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: SMODS.Edition) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: SMODS.Edition, key: string, obj: table, silent?: boolean): SMODS.Edition Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: SMODS.Edition, key: string): table|nil Returns an object if one matches the `key`. 
---@overload fun(self: SMODS.Edition): SMODS.Edition
SMODS.Edition = setmetatable({}, {
    __call = function(self)
        return self
    end
})