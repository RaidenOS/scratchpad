```yaml
init_item: stone
item_name: name
namespace:default # (minecraft)
name: default # (item_name)
description: default
nbt: {nbt} 
```

```yaml
init_item: blaze_rod
item_name: wand
namespace: frostcraft
name: &r&7**Wand**
lore: &r&b**A &3Magical &bWand**
nbt: {frostcraft: {wand: true}} # excluding name and lore.
```
Now it can be used in commands such as 
/summon frostcraft:wand
or in crafting recipies.
