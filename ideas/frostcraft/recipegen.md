Goals
---
> * Support just about any java object. \[Parsed Yaml, Parsed Json]
> * Extend the minecraft recipe json format to stay semi-consistant with minecraft
> * Don't go out of the way to stay consistant with minecraft, if it seems out of place, or the plugin already supported the feature, simply add support for the new minecraft feature.
> * Support custom recipe types. \[Brewing Stand, Custom ways of crafting on servers]
___

Example for a wooden pickaxe written in yaml.
```yaml
type: crafting_shaped
pattern:  [
  P, P, P,
  ., S, .,
  ., S, .
]
key:
  P:
    tag: minecraft:wooden_planks
  S:
    item: minecraft:wooden_stick
result:
  experience: 0.0
  item: minecraft:wooden_pickaxe
  count: 1
```

Example for a wand on a server with itemgen.
```yaml
type: crafting_shaped
pattern: [
  ., B, .,
  ., B, .,
  ., B, .

]
key:
  B: minecraft:blaze_rod
result:
  experience: 0.0
  item: frostcraft:wand
  count: 1
```
As you can see, we are using the namespace frostcraft when the item is being made because of itemgen.

Using itemgen in the actual pattern
```yaml
type: crafting_shaped
pattern: [
  ., W, .,
  ., W, .,
  ., W, .,
]
key:
  W: frostcraft:wand
result:
  experience: 0.0
  item: frostcraft:super_wand
  count: 1
```

Setting up a custom crafting middleware for this would work like in this psuedocode.
```
recipegen = require "recipegen"

regicpegen.new "mana_forge_shaped" do |crafting, recipe_settings|
  recipe_settings["mana_forge"].merge default_config # Do not replace existing settings and fill in ones that do not exist.

  crafting.input get items in container
  
  if crafting.output != "no_output"
    remove items in container
    container add items crafting.output
  end
  
  if recipe_settings[mana_forge]
end
    
  

event "do_custom_crafting" do
  crafting = new recipegen "mana_forge" do
  input_items = get items from container/position/etc.
  crafting.input input_items
  output = crafting.output
  if output != empty || output != null
    remove/reset items from input
    place/summon output
end
  
  
  



  
