---@meta

---@class SMODS.Blind: SMODS.GameObject
---@field atlas? string Key to the blind's atlas. 
---@field pos? table Position of the blind's sprite. 
---@field discovered? boolean Sets the discovery state of the blind. 
---@field dollars? number Amount of money earned when defeated. 
---@field mult? number Required score multiplier relative to the Ante's Base score. 
---@field boss? table Marks this Blind as a Boss Blind. `min` indicates minimum Ante for this Blind to appear. `showdown` indicates this Blind is a Final Boss Blind. For complex conditions, use `in_pool`. 
---@field boss_colour? table HEX color for the background when playing this Blind. 
---@field debuff? table Configures vanilla blind effects related to debuffing, see [Blind Documentation](https://github.com/Steamodded/smods/wiki/SMODS.Blind#api-documentation-smodsblind). Ignored if Blind defines `debuff_hand` or `debuff_card`. 
---@field ignore_showdown_check? boolean Sets if `in_pool` should be respected regardless of whether a showdown Boss Blind was requested or not. 
---@field vars? table Variables for this Blind's description in the collection. 
---@field __call? fun(self: table|SMODS.Blind, o: table|SMODS.Blind): nil|SMODS.Blind
---@field extend? fun(self: table|SMODS.Blind, o: table|SMODS.Blind): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: table|SMODS.Blind): boolean? Ensures objects already registered will not register. 
---@field check_duplicate_key? fun(self: table|SMODS.Blind): boolean? Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: table|SMODS.Blind) Registers the object. 
---@field check_dependencies? fun(self: table|SMODS.Blind): boolean? Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: table|SMODS.Blind) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: table|SMODS.Blind, ...: any) Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: table|SMODS.Blind) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: table|SMODS.Blind) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: table|SMODS.Blind) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: table|SMODS.Blind, i?: number) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: table|SMODS.Blind, key: string, obj: table, silent?: boolean): nil|SMODS.Blind Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: table|SMODS.Blind, key: string): table? Returns an object if one matches the `key`. 
---@field new? fun(self, name, slug, loc_txt, dollars, mult, vars, debuff, pos, boss, boss_colour, defeated, atlas): any DEPRECATED. DO NOT USE
---@field set_blind? fun(self: table|SMODS.Blind) Handles effects when this Blind is selected. 
---@field disable? fun(self: table|SMODS.Blind) Handles effect reverting when this Blind is disabled. 
---@field defeat? fun(self: table|SMODS.Blind) Handles effect reverting when this Blind is defeated. 
---@field drawn_to_hand? fun(self: table|SMODS.Blind) Handles effects when cards are drawn to hand. 
---@field press_play? fun(self: table|SMODS.Blind) Handles effects when a hand is played. 
---@field recalc_debuff? fun(self: table|SMODS.Blind, card: table|Card, from_blind: boolean): nil|boolean Determines if a card should be debuffed by this blind. 
---@field debuff_hand? fun(self: table|SMODS.Blind, cards: table, hand: table, handname: string, check: nil|boolean): boolean Determines if the hand is debuffed. 
---@field stay_flipped? fun(self: table|SMODS.Blind, area: table|CardArea, card: table|Card): boolean Determines if a card is drawn face down. 
---@field modify_hand? fun(self: table|SMODS.Blind, cards: table, poker_hands: table, text: string, mult: number, hand_chips: number): number?, number?, boolean? Handles modifications of the base score for played poker hand. 
---@field get_loc_debuff_text? fun(self: table|SMODS.Blind): string? Handles text displayed for debuff warnings or invalid hands. 
---@field loc_vars? fun(self: table|SMODS.Blind): table? Provides control over displaying the Blind descriptions. 
---@field collection_loc_vars? fun(self: table|SMODS.Blind): table? Provides control over displaying the Blind description in the collections menu. 
---@field in_pool? fun(self: table|SMODS.Blind): boolean Allows configuring if the Blind is allowed to appear. 
---@overload fun(self: SMODS.Blind): SMODS.Blind
SMODS.Blind = setmetatable({}, {
    __call = function(self)
        return self
    end
})
