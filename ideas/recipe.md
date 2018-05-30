Mana Forge Hammer
```yaml
type: crafting_shaped
pattern: [
  r, d, r,
  _, s, _,
  _, s, _,
]
key:
  r:
    item: minecraft:redstone_block
  d:
    item: minecraft:diamond_block
  s:
    item: minecraft:stick
result:
  item: frostcraft:mana_forge_hammer
```

Enchanted Stone
```yaml
type: mana_forge_shapeless
ingredients: [
  item: minecraft:stone,
  item: minecraft:redstone_block
]
requirements:
  mana_forge_level: 1
  xp: 100
result:
  item: frostcraft:enchanted_stone
  mana_forge_xp: 100
```
