---@meta

---@class SMODS.ObjectType: SMODS.GameObject
---@field default? string Key to fallback center when object pool is empty. 
---@field cards? table List of keys to centers to auto-inject into the pool. Formatted as `{ ["j_joker"] = true }`. 
---@field rarities? table Array of tables representing rarities. Each table must contain the key to the rarity, with an optional arg of `weight` (omitting uses rarity default, see `SMODS.Rarity.default_weight`). 
---@overload fun(self: SMODS.ObjectType): SMODS.ObjectType
SMODS.ObjectType = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.ObjectType Class to extend
---@param o SMODS.ObjectType Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.ObjectType:extend(o) return o end

---@param self SMODS.ObjectType
---Registers the object. 
function SMODS.ObjectType:register() end

---@param self SMODS.ObjectType
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.ObjectType:process_loc_text() end

---@param self SMODS.ObjectType
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.ObjectType:pre_inject_class() end

---@param self SMODS.ObjectType
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.ObjectType:post_inject_class() end

---@param self SMODS.ObjectType
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.ObjectType:inject_class() end

---@param self SMODS.ObjectType
---Called during `inject_class`. Injects the object into the game. 
function SMODS.ObjectType:inject() end

---@param self SMODS.ObjectType
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.ObjectType obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.ObjectType:take_ownership(key, obj, silent) return obj end

---@param self SMODS.ObjectType
---@param center table
---Injects the center into the ObjectType pools.
function SMODS.ObjectType:inject_card(center) end

---@param self SMODS.ObjectType
---@param center table
---Removes the center from ObjectType pools. 
function SMODS.ObjectType:remove_card(center) end
