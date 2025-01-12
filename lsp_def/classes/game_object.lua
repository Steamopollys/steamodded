---@meta

---@class SMODS.GameObject: Object 
---@field obj_table? table Table of objects registered to this class. 
---@field obj_buffer? table Array of keys to all objects registered to this class. 
---@field dependancies? table Array of mod IDs. Object will fail to register if any specified mods cannot load. 
---@field subclasses? table Array of child classes. 
---@field super? table Parent class. 
---@field key? string Unique string to reference this object. 
---@field class_prefix? string All objects created with this class will have their key prefixed with this string. 
---@field prefix_config? boolean|table Controls how prefixes are applied. By default, class_prefix and mod_prefix are applied to all registered objects. 
---@field required_params? table Array of parameters required for objects created by this class. 
---@field set? string Important for objects wanting to follow vanilla logic that depends on `set`. For classes, this is used for logging purposes. 
---@field no_collection? boolean Sets whether the object shows up in collections. ---@overload fun(self: SMODS.GameObject): SMODS.GameObject
---@field config? table Cards/Objects representing your center will copy default values from `config` into it's `ability` table. Custom values can be stored within `extra`. 
SMODS.GameObject = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.GameObject Class to extend
---@param o SMODS.GameObject Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.GameObject:extend(o) return o end

---@param self SMODS.GameObject
---@return boolean
---Checked on both __call and take_ownership. Ensures that created objects don't already exist. 
function SMODS.GameObject:check_duplicate_register() return false end

---@param self SMODS.GameObject
---@return boolean
---Ensures objects with duplicate keys will not register.
---Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
function SMODS.GameObject:check_duplicate_key() return false end

---@param self SMODS.GameObject
---Registers the object. 
function SMODS.GameObject:register() end

---@param self SMODS.GameObject
---@return boolean
---Returns true if there's no failed dependencies, else false
function SMODS.GameObject:check_dependencies() return true end

---@param self SMODS.GameObject
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.GameObject:process_loc_text() end

---@param self SMODS.GameObject
---@param func string
---Starting from this class, recusively searches for
---functions with the given key on all subordinate classes
---and run all found functions with the given arguments
function SMODS.GameObject:send_to_subclasses(func, ...) end

---@param self SMODS.GameObject
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.GameObject:pre_inject_class() end

---@param self SMODS.GameObject
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.GameObject:post_inject_class() end

---@param self SMODS.GameObject
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.GameObject:inject_class() end

---@param self SMODS.GameObject
---Called during `inject_class`. Injects the object into the game. 
function SMODS.GameObject:inject() end

---@param self SMODS.GameObject
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.GameObject obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.GameObject:take_ownership(key, obj, silent) end

---@param self SMODS.GameObject
---@param reversed boolean
---@return table 
---Internal function
---Creates a list of objects from a list of keys. 
---Currently used for a special case when selecting a random suit/rank. 
function SMODS.GameObject:obj_list(reversed) end

---@param self SMODS.GameObject
---@param key string
---@return table|nil table
---Returns an object if one matches the `key`. 
function SMODS.GameObject:get_obj(key) end
