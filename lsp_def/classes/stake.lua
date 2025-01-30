---@meta

---@class SMODS.Stake: SMODS.GameObject
---@field applied_stakes? table Array of keys to stakes that should be applied when this stake is active. 
---@field atlas? string Key to the center's atlas. 
---@field pos? table Position of the center's sprite. 
---@field sticker_atlas? string Atlas for stake's win sticker. 
---@field sticker_pos? table Position of the stake's win sticker sprite. 
---@field above_stake? string Key to the stake that this stake appeard above in the run menu. By default, stakes are added on top of the last injected stake. 
---@field colour? table HEX color of the stake in the stake selection menu. 
---@field unlocked? boolean Sets if the stake is unlocked by default. 
---@field __call? fun(self: table|SMODS.Stake, o: table|SMODS.Stake): nil|SMODS.Stake
---@field extend? fun(self: table|SMODS.Stake, o: table|SMODS.Stake): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: table|SMODS.Stake): boolean? Ensures objects already registered will not register. 
---@field check_duplicate_key? fun(self: table|SMODS.Stake): boolean? Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: table|SMODS.Stake) Registers the object. 
---@field check_dependencies? fun(self: table|SMODS.Stake): boolean? Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: table|SMODS.Stake) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: table|SMODS.Stake, ...: any) Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: table|SMODS.Stake) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: table|SMODS.Stake) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: table|SMODS.Stake) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: table|SMODS.Stake, i?: number) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: table|SMODS.Stake, key: string, obj: table, silent?: boolean): nil|SMODS.Stake Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: table|SMODS.Stake, key: string): table? Returns an object if one matches the `key`. 
---@field modifiers? fun() Applies changes to the game state when this stake is applied at the start of a run. 
---@overload fun(self: SMODS.Stake): SMODS.Stake
SMODS.Stake = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param stake table|SMODS.Stake
---@param applied nil|table
---@return nil|table applied
---Builds the stake chain. 
function SMODS.build_stake_chain(stake, applied) end

---@param i number 
---Sets up stakes after deck select, calls `SMODS.Stake.modifier()` on all applied stakes. 
function SMODS.setup_stake(i) end

---@param index number
---@return number|string
---Given an index from the Stake pool, return corresponding key or `"error"` if it doesn't exist
function SMODS.stake_from_index(index) end
