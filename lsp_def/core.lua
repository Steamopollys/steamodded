---@meta

SMODS = {}

---@class Mod
---@field id string Unique ID. 
---@field name string Name of the mod. 
---@field display_name? string Display name of the mod. 
---@field description string Mod description. 
---@field priority? number Loaded mods are sorted via priority. 
---@field badge_colour? table HEX color of the mod badge. 
---@field badge_text_colour? table HEX color of the text inside the mod badge. 
---@field prefix string Unique string. All objects created by this mod have this string appended to their key. 
---@field version? string Mod version. 
---@field dump_loc? true Dumps G.localization table into this mod's directory. 
---@field dependencies? table[] All mods in this array must be installed and loaded for this mod to load. 
---@field conflicts? table[] No mods in this array can be installed for this mod to load. 
---@field provides? table[] If any of the mods in this array are not installed or loaded, this mod will act as a stand in. 
---@field main_file string Path to the main .lua file of this mod. 
---@field config_file? string Path to the config file of this mod. Defaults to "config.lua" if not provided. 
---@field config? table Config values for this mod. 
---@field can_load? boolean? 
---@field config_tab? fun(): table Creates this mod's config tab UI. 
---@field extra_tabs? fun(): table[] Creates additional tabs within this mod's menu. 
---@field custom_collection_tabs? fun(): table[] Creates additional buttons displayed inside the "Other" tab in collections. 
---@field description_loc_vars? fun(self: Mod|table): table Allows dynamic display of this mod's description. 
---@field custom_ui? fun(mod_nodes: table) Allows manipulating this mod's description tab. 
---@field set_ability_reset_keys? fun(): table When a card's `ability` table is changed, values with a key matching inside this table will not persist. 
---@field reset_game_globals? fun(run_start: boolean) Allows resetting global values every new run or round. 
---@field set_debuff? fun(card: Card|table): boolean|string? Allows controlling when a card is debuffed or not. Return `"prevent_debuff"` to force a card to be undebuffable. 