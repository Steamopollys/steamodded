---@meta

---@class SMODS.Tag: SMODS.GameObject
---@field atlas? string Key to the center's atlas. 
---@field pos? table Position of the center's sprite. 
---@field min_ante? number Minimum ante needed for this tag to appear. For more complex restrictions, use `SMODS.Tag:in_pool()`. 
---@field discovered? boolean Sets the discovery state of the tag. 
---@field __call? fun(self: table|SMODS.Tag, o: SMODS.Tag): SMODS.Tag
---@field extend? fun(self: table|SMODS.Tag, o: SMODS.Tag): table Primary method of creating a class. 
---@field check_duplicate_register? fun(self: table|SMODS.Tag): table
---@field check_duplicate_key? fun(self: table|SMODS.Tag): boolean Ensures objects with duplicate keys will not register. Checked on __call but not take_ownerhsip. For take_ownership, the key must exist. 
---@field register? fun(self: table|SMODS.Tag) Registers the object. 
---@field check_dependencies? fun(self: table|SMODS.Tag): boolean Returns true if there's no failed dependencies, else false
---@field process_loc_text? fun(self: table|SMODS.Tag) Called during `inject_class`. Handles injecting loc_text. 
---@field send_to_subclasses? fun(self: table|SMODS.Tag, ...: any): string Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments. 
---@field pre_inject_class? fun(self: table|SMODS.Tag) Called before `inject_class`. Injects and manages class information before object injection. 
---@field post_inject_class? fun(self: table|SMODS.Tag) Called after `inject_class`. Injects and manages class information after object injection. 
---@field inject_class? fun(self: table|SMODS.Tag) Inject all direct instances of `o` of the class by calling `o:inject`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`. 
---@field inject? fun(self: table|SMODS.Tag) Called during `inject_class`. Injects the object into the game. 
---@field take_ownership? fun(self: table|SMODS.Tag, key: string, obj: table, silent?: boolean): SMODS.Tag Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: table|SMODS.Tag, key: string): table|nil Returns an object if one matches the `key`. 
---@field apply? fun(self: table|SMODS.Tag, tag: Tag, context: table) Defines behaviour when a tag triggers. To trigger, call `Tag:yep()`. See [SMODS.Tag](https://github.com/Steamodded/smods/wiki/SMODS.Tag) wiki for details. 
---@field set_ability? fun(self: table|SMODS.Tag, tag: Tag) Sets up initial ability for the tag. Values should be stored in `tag.ability`. 
---@field generate_ui? fun(self: table|SMODS.Tag, info_queue: table, tag: Tag, desc_nodes: table, specific_vars: table, full_UI_table: table) Provides complex control over the UI display of the tag. 
---@field loc_vars? fun(self: table|SMODS.Tag, info_queue: table, tag: Tag): nil|table Provides simple control over displaying descriptions and tooltips of the tag. 
---@field in_pool? fun(self: table|SMODS.Tag, args: table): boolean, table? Allows configuring if the tag is allowed to spawn. 
---@overload fun(self: SMODS.Tag): SMODS.Tag
SMODS.Tag = setmetatable({}, {
    __call = function(self)
        return self
    end
})