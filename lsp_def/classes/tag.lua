---@meta

---@class SMODS.Tag: SMODS.GameObject
---@field atlas? string Key to the center's atlas. 
---@field pos? table Position of the center's sprite. 
---@field min_ante? number Minimum ante needed for this tag to appear. For more complex restrictions, use `SMODS.Tag:in_pool()`. 
---@field discovered? boolean Sets the discovery state of the tag. 
---@overload fun(self: SMODS.Tag): SMODS.Tag
SMODS.Tag = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@param self SMODS.Tag Class to extend
---@param o SMODS.Tag Class to create
---@return table o
---Primary method of creating a class. 
function SMODS.Tag:extend(o) return o end

---@param self SMODS.Tag
---Registers the object. 
function SMODS.Tag:register() end

---@param self SMODS.Tag
---Called during `inject_class`. Handles injecting loc_text. 
function SMODS.Tag:process_loc_text() end

---@param self SMODS.Tag
---Called before `inject_class`. Injects and manages class information before object injection. 
function SMODS.Tag:pre_inject_class() end

---@param self SMODS.Tag
---Called after `inject_class`. Injects and manages class information after object injection. 
function SMODS.Tag:post_inject_class() end

---@param self SMODS.Tag
---Inject all direct instances of `o` of the class by calling `o:inject`. 
---Also injects anything necessary for the class itself. 
---Only called if class has defined both `obj_table` and `obj_buffer`. 
function SMODS.Tag:inject_class() end

---@param self SMODS.Tag
---Called during `inject_class`. Injects the object into the game. 
function SMODS.Tag:inject() end

---@param self SMODS.Tag
---@param key string
---@param obj table
---@param silent? boolean
---@return SMODS.Tag obj
---Takes control of vanilla objects. Child class must have get_obj for this to function
function SMODS.Tag:take_ownership(key, obj, silent) return obj end

---@param self SMODS.Tag
---@param key string
---@return table|nil table
---Returns an object if one matches the `key`. 
function SMODS.Tag:get_obj(key) end

---@param self SMODS.Tag
---@param tag Tag
---@param context table Instead of tags being restricted to self.config.type, context.type is passed. See vanilla `Tag:apply()` for details. 
---Defines behaviour when a tag triggers. To trigger, call `Tag:yep()` (see function for details). 
function SMODS.Tag:apply(tag, context) end

---@param self SMODS.Tag
---@param tag Tag
---Sets up initial ability for the tag. Values should be stored in `tag.ability`. 
function SMODS.Tag:set_ability(tag) end

---@param self SMODS.Tag
---@param info_queue table
---@param tag Tag
---@param desc_nodes table
---@param specific_vars table
---@param full_UI_table table
---Provides more complex control over the UI display of the tag. 
function SMODS.Tag:generate_ui(info_queue, tag, desc_nodes, specific_vars, full_UI_table) end

---@param self SMODS.Tag
---@param info_queue table
---@param tag Tag
---@return table { `key`?: string, `vars`?: table, `text_colour`?: table, `scale`?: number, `main_start`?: table, `main_end`?: table, `replace_debuff`?: boolean }
---Provides simple control over displaying descriptions and tooltips of the tag. 
function SMODS.Tag:loc_vars(info_queue, tag) end

---@param self SMODS.Tag
---@param args table
---@return boolean allow
---@return table config { `allow_duplicates`: boolean, allows duplicate tag spawns akin to Showman }
---Allows configuring if the tag is allowed to spawn. 
function SMODS.Tag:in_pool(args) end
