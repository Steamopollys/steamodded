---@meta

---@class SMODS.PokerHand: SMODS.GameObject
---@field __call? fun(self: SMODS.PokerHand, o: SMODS.PokerHand): SMODS.PokerHand
---@field extend? fun(self: SMODS.PokerHand, o: SMODS.PokerHand): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: SMODS.PokerHand, o: SMODS.PokerHand): table
---@field check_duplicate_key? fun(self: SMODS.PokerHand): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: SMODS.PokerHand) Registers the object. 
---@field check_dependencies? fun(self: SMODS.PokerHand): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: SMODS.PokerHand) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: SMODS.PokerHand, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: SMODS.PokerHand) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: SMODS.PokerHand) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: SMODS.PokerHand) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: SMODS.PokerHand) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: SMODS.PokerHand, key: string, obj: table, silent?: boolean): SMODS.PokerHand Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: SMODS.PokerHand, key: string): table|nil Returns an object if one matches the `key`. 
---@overload fun(self: SMODS.PokerHand): SMODS.PokerHand
SMODS.PokerHand = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@class SMODS.PokerHandPart: SMODS.GameObject
---@field __call? fun(self: SMODS.PokerHandPart, o: SMODS.PokerHandPart): SMODS.PokerHandPart
---@field extend? fun(self: SMODS.PokerHandPart, o: SMODS.PokerHandPart): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: SMODS.PokerHandPart, o: SMODS.PokerHandPart): table
---@field check_duplicate_key? fun(self: SMODS.PokerHandPart): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: SMODS.PokerHandPart) Registers the object. 
---@field check_dependencies? fun(self: SMODS.PokerHandPart): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: SMODS.PokerHandPart) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: SMODS.PokerHandPart, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: SMODS.PokerHandPart) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: SMODS.PokerHandPart) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: SMODS.PokerHandPart) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: SMODS.PokerHandPart) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: SMODS.PokerHandPart, key: string, obj: table, silent?: boolean): SMODS.PokerHandPart Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: SMODS.PokerHandPart, key: string): table|nil Returns an object if one matches the `key`. 
---@field func? fun(self: SMODS.PokerHandPart, hand: table): table Returns array of cards that are a part of this hand. 
SMODS.PokerHandPart = setmetatable({}, {
    __call = function(self)
        return self
    end
})
