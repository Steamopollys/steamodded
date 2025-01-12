---@meta

---@class SMODS.Rank: SMODS.GameObject
---@overload fun(self: SMODS.Rank): SMODS.Rank
SMODS.Rank = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Rank Class to extend
---@param o SMODS.Rank Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Rank:extend(o) return o end

---@param self SMODS.Rank
---Registers the object. 
function SMODS.Rank:register() end

---@param self SMODS.Rank
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Rank:process_loc_text() end

---@param self SMODS.Rank
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Rank:pre_inject_class() end

---@param self SMODS.Rank
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Rank:post_inject_class() end

---@param self SMODS.Rank
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Rank:inject_class() end

---@param self SMODS.Rank
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Rank:inject() end

---@param self SMODS.Rank
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Rank obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Rank:take_ownership(key, obj, silent) return obj end
