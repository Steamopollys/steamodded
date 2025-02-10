---@meta

--- Util Classes

--- Internal class referring args passed as `context` in a SMODS object's `calculate` function. 
--- Not all arguments typed here are present in all contexts, see [Calculate Function](https://github.com/Steamodded/smods/wiki/calculate_functions#contexts) for details. 
---@class CalcContext: table 
---@field cardarea? CardArea The CardArea currently being checked. 
---@field full_hand? Card[]|table[] All play or selected cards. 
---@field scoring_hand? Card[]|table[] All scoring cards in played hand. 
---@field scoring_name? string Key to the scoring poker hand. 
---@field poker_hands? table<string, Card[]|table[]> All poker hand parts the played hand can form. 
---@field other_card? Card|table The individual card being checked during scoring. 
---@field other_joker? Card|table The individual Joker being checked during scoring. 
---@field card_effects? table Table of effects that have been calculated. 
---@field destory_card? Card|table The individual card being checked for destruction. 
---@field destorying_card? Card|table The individual card being checked for destruction. Only present when calculating G.play. 
---@field removed? Card[]|table[] Table of destroyed playing cards. 
---@field game_over? boolean Whether the run is lost or not. 
---@field blind? Blind|table Current blind being selected. 
---@field hook? boolean `true` when "The Hook" discards cards. 
---@field card? Card|table The individual card being checked outside of scoring. 
---@field cards? boolean[] Table of booleans representing how many cards are created. Only a value when `context.playing_card_added` is `true`. 
---@field consumable? Card|table The Consumable being used. Only a value when `context.using_consumeable` is `true`. 
---@field blueprint_card? Card|table The card currently copying the eval effects. 
---@field no_blueprint? true Effects akin to Blueprint or Brainstorm should not trigger in this context. 
---@field other_context? CalcContext|table The context the last eval happened on. 
---@field other_ret? table The return table from the last eval. 
---@field before? true Check if `true` for effects that happen before hand scoring. 
---@field after? true Check if `true` for effects that happen after hand scoring. 
---@field main_scoring? true Check if `true` for effects that happen during scoring. 
---@field individual? true Check if `true` for effects on individual playing cards during scoring. 
---@field repetition? true Check if `true` for adding repetitions to playing cards. 
---@field edition? true `true` for any Edition-specific context (e.x. context.pre_joker and context.post_joker). 
---@field pre_joker? true Check if `true` for triggering editions on jokers before they score. 
---@field post_joker? true Check if `true` for triggering editions on jokers after they score. 
---@field joker_main? true Check if `true` for triggering normal scoring effects on Jokers. 
---@field final_scoring_step? true Check if `true` for effects after cards are scored and before the score is totalled. 
---@field remove_playing_card? true Check if `true` for effects on removed cards. 
---@field debuffed_hand? true Check if `true` for effects when playing a hand debuffed by a blind. 
---@field end_of_round? true Check if `true` for effects at the end of the round. 
---@field setting_blind? true Check if `true` for effects when the blind is selected. 
---@field pre_discard? true Check if `true` for effects before cards are discarded. 
---@field discard? true Check if `true` for effects on each individual card discarded. 
---@field open_booster? true Check if `true` for effects when opening a Booster Pack. 
---@field skipping_booster? true Check if `true` for effects after a Booster Pack is skipped. 
---@field buying_card? true Check if `true` for effects after buying a card. 
---@field selling_card? true Check if `true` for effects after selling a card. 
---@field reroll_shop? true Check if `true` for effects after rerolling the shop. 
---@field ending_shop? true Check if `true` for effects after leaving the shop. 
---@field first_hand_drawn? true Check if `true` for effects after drawing the first hand. 
---@field hand_drawn? true Check if `true` for effects after drawing a hand. 
---@field using_consumeable? true Check if `true` for effects after using a Consumable. 
---@field skip_blind? true Check if `true` for effects after skipping a blind. 
---@field playing_card_added? true Check if `true` for effects after a playing card was added into the deck. 
---@field check_enhancement? true Check if `true` for applying quantum enhancements. 
---@field post_trigger? true Check if `true` for effects after another Joker is triggered. 

--- Util Functions

---@param ... table<integer, any>
---@return table
---Flattens given arrays into one, then adds elements from each table to a new one. Skips duplicates. 
function SMODS.merge_lists(...) end

---@param hex string
---@return table
---Returns HEX color attributed to the string. 
function HEX(hex) end
