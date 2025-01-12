---@meta

---@class SMODS.Center: SMODS.GameObject
---@field atlas? string Key to the center's atlas. 
---@field pos? table Position of the center's sprite. 
---@field unlocked? boolean Sets the unlock state of the center. 
---@field discovered? boolean Sets the discovery state of the center. 
---@field no_collection? boolean Sets whether the card shows up in the collections menu. 
---@field loc_txt? table Contains data used for displaying text related to this object. See SMODS documentation for the class on format. 
---@field pools table Array of keys to ObjectType pools this center will be added to.---@overload fun(self: SMODS.Center): SMODS.Center
---@field cost? number Sell cost of this center. 
---@field no_pool_flag? string Key to a pool flag defined in `G.GAME.pool_flags`. This center is removed from it's pool as long as this flag is `true`. 
---@field yes_pool_flag? string Key to the pool flag defined in `G.GAME.pool_flags`. This center is removed from it's pool as long as this flag is `false`. 
SMODS.Center = setmetatable({}, {
    __call = function(self)
        return self
    end,
})

---@param self SMODS.Center Class to extend
---@param o SMODS.Center Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Center:extend(o) return o end

---@param self SMODS.Center
---Registers the object. 
function SMODS.Center:register() end

---@param self SMODS.Center
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Center:process_loc_text() end

---@param self SMODS.Center
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Center:pre_inject_class() end

---@param self SMODS.Center
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Center:post_inject_class() end

---@param self SMODS.Center
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Center:inject_class() end

---@param self SMODS.Center
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Center:inject() end

---@param self SMODS.Center
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Center obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Center:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Center
---@param key string
---@return table|nil table
---Returns an object if one matches the `key`. 
function SMODS.Center:get_obj(key) end

---@param self SMODS.Center Center to delete. 
---@return boolean
---Removes provided object. 
function SMODS.Center:delete() end

---@param self SMODS.Center
---@param info_queue table
---@param card Card
---@param desc_nodes table
---@param specific_vars table
---@param full_UI_table table
---Provides more complex control over the UI display of the card. 
function SMODS.Center:generate_ui(info_queue, card, desc_nodes, specific_vars, full_UI_table) end

---@param self SMODS.Center
---@param info_queue table
---@param card Card
---@return table { `key`?: string, `vars`?: table, `name_text`?: table, `text_colour`?: table, `scale`?: number, `main_start`?: table, `main_end`?: table, `replace_debuff`?: boolean }
---Provides simple control over displaying descriptions and tooltips of the card. 
function SMODS.Center:loc_vars(info_queue, card) end

---@param self SMODS.Center
---@param info_queue table
---@param card Card
---@return table { `key`?: string, `vars`?: table, `text_colour`?: table, `scale`?: number }
---Provides simple control over displaying descriptions and toolips of this center when not unlocked. 
function SMODS.Center:locked_loc_vars(info_queue, card) end

---@param self SMODS.Center
---@param args table
---@return boolean
---Configures unlock conditions, return true if this center should be unlocked. 
---See vanilla implementation of `check_for_unlock` for details on args parameters. 
function SMODS.Center:check_for_unlock(args) end

---@param self SMODS.Center
---@param badges table Append this table with your badges. 
---Add additional badges to the UI display of the card. 
---To override the rarity/card type badge, see `SMODS.Center:set_card_type_badge()`. 
function SMODS.Center:set_badges(card, badges) end

---@param self SMODS.Center
---@param card Card
---@param badges table Append this table with your badges. 
---Overrides the rarity/card type badges, allowing you to replace them. 
---To add extra badges, see `SMODS.Center:sset_badges()`
function SMODS.Center:set_card_type_badge(card, badges) end

---@param self SMODS.Center
---@param card Card
---@param layer? string "card", "shadow", or "both". 
---Draws the sprite and shader of the card. 
function SMODS.Center:draw(card, layer) end

---@param self SMODS.Center
---@param card Card
---@param dt number delta-time
---Called every frame. 
function SMODS.Center:update(card, dt) end

---@param self SMODS.Center
---@param card Card
---@param front nil|Card Playing cards have sprites set through `front`. 
---Used for setting and manipulating sprites of the card when created or loaded. 
function SMODS.Center:set_sprites(card, front) end

---@param self SMODS.Center
---@param card Card
---@param card_table table
---@param other_card? table Unused in vanilla. 
---Used when the card itself is being reloaded. 
function SMODS.Center:load(card, card_table, other_card) end

---@param self SMODS.Center
---@param card Card
---@param initial? boolean `true` when card is initially created
---@param delay_sprites? boolean `true` when the `set_sprites` call is delayed by an event. 
---Sets up initial ability and size parameters for the card. 
function SMODS.Center:set_ability(card, initial, delay_sprites) end

---@param self SMODS.Center
---@param card Card
---@param from_debuff? boolean `true` if the card is being "added" due to undebuffing. 
---Allows modifying the game state when the card is being added. 
function SMODS.Center:add_to_deck(card, from_debuff) end

---@param self SMODS.Center
---@param card Card
---@param from_debuff? boolean `true` if the card is being "removed" due to debuffing. 
---Allows modifying the game state when the card is being removed. 
function SMODS.Center:remove_from_deck(card, from_debuff) end

---@param self SMODS.Center
---@param args table
---@return boolean allow
---@return table config { `allow_duplicates`: boolean, allows duplicate card spawns akin to Showman }
---Allows configuring if the card is allowed to spawn. 
function SMODS.Center:in_pool(args) end

---@param self SMODS.Center
---@param card Card
---@param context table
---@return table
---Calculates effects based on parameters in `context`. See SMODS calculations docs for details. 
function SMODS.Center:calculate(card, context) end
