---@meta

--- Vanilla classes & functions. 

-- Balatro vanilla classes declared here, allows typing SMODS functions. 
---@class Object: metatable
---@class Node: Object
---@class Event: Object
---@class EventManager: Object
---@class Back: Object
---@class Tag: Object
---@class Game: Object
---@class Moveable: Node
---@class UIBox: Moveable
---@class UIElement: Moveable
---@class DynaText: Moveable
---@class Particles: Moveable
---@class Sprite: Moveable
---@class AnimatedSprite: Sprite
---@class Blind: Moveable
---@class Card: Moveable
---@field ability? table
Card = function(self, X, Y, W, H, card, center, params) return self end
---@class Card_Character: Moveable
---@class CardArea: Moveable

--- Vanilla functions

---@param hex string
---@return table
---Returns HEX color attributed to the string. 
function HEX(hex) end
