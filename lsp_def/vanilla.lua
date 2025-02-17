---@meta

--- Vanilla classes & functions. 

-- Balatro vanilla classes declared here, allows typing SMODS functions. 
---@class Object: metatable
---@overload fun(...: any): Object|table
Object = {}
function Object:__call(...) return self end

---@class Node: Object
---@overload fun(...: any): Node|table
Node = {}
function Node:__call(...) return self end

---@class Event: Object
---@overload fun(...: any): Event|table
Event = {}
function Event:__call(...) return self end

---@class EventManager: Object
---@overload fun(...: any): EventManager|table
EventManager = {}
function EventManager:__call(...) return self end

---@class Back: Object
---@overload fun(...: any): Back|table
Back = {}
function Back:__call(...) return self end

---@class Tag: Object
---@overload fun(...: any): Tag|table
Tag = {}
function Tag:__call(...) return self end

---@class Game: Object
---@overload fun(...: any): Game|table
Game = {}
function Game:__call(...) return self end

---@class Moveable: Node
---@overload fun(...: any): Moveable|table
Moveable = {}
function Moveable:__call(...) return self end

---@class UIBox: Moveable
---@overload fun(...: any): UIBox|table
UIBox = {}
function UIBox:__call(...) return self end

---@class UIElement: Moveable
---@overload fun(...: any): UIElement|table
UIElement = {}
function UIElement:__call(...) return self end

---@class DynaText: Moveable
---@overload fun(...: any): DynaText|table
DynaText = {}
function DynaText:__call(...) return self end

---@class Particles: Moveable
---@overload fun(...: any): Particles|table
Particles = {}
function Particles:__call(...) return self end

---@class Sprite: Moveable
---@overload fun(...: any): Sprite|table
Sprite = {}
function Sprite:__call(...) return self end

---@class AnimatedSprite: Sprite
---@overload fun(...: any): AnimatedSprite|table
AnimatedSprite = {}
function AnimatedSprite:__call(...) return self end

---@class Blind: Moveable
---@overload fun(...: any): Blind|table
Blind = {}
function Blind:__call(...) return self end
---@type Blind|table|nil
G.GAME.blind = Blind()

---@class Card: Moveable
---@field ability? table
---@overload fun(...: any): Card|table
Card = {}
function Card:__call(...) return self end

---@class Card_Character: Moveable
---@overload fun(...: any): Card_Character|table
Card_Character = {}
function Card_Character:__call(...) return self end

---@class CardArea: Moveable
---@overload fun(...: any): CardArea|table
CardArea = {}
function CardArea:__call(...) return self end

--- Vanilla functions

---@param hex string
---@return table
---Returns HEX color attributed to the string. 
function HEX(hex) end
