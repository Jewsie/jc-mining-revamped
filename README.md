# jc-mining - Recreated
 A newly and better optimized mining system!

# PolyZone
Add the polyzone script in a folder for itself, that's a resource for itself and not part of the script, however I have realised that a lot of the polyzones are different to this one that is compatible!

# Showcase:
https://youtu.be/bixu5KhiE-4
https://youtu.be/FLDydwk9LX0

# JC-Mining
JC-Mining is a more advanced mining script created with capability for both RSG and VORP now too! It involves a very easy and well configurable config mine, including bunch of other features listed below, video showcases above, and as always discord for support too below!

# Features
- Goldpanning
- Rock Washing
- Several mine locations
- Hidden Mines
- Adding several mine types
- Activate/Deactivate breakchance for pickaxe
- Hotspots for Goldpanning to get higher reward amount and chance!

# Dependencies
***For RSG***
- rsg-core
- PolyZone

***For Vorp***
- vorp-core
- vorp_progressbar
- PolyZone

# Discord Support
https://discord.gg/xvU7HxsENH

# Adding Items
Wanna use the items I do? Make sure you have these in your items.lua for rsg-core(VORP is below)
```-- Crafting aterials
    ['iron']      = {['name'] = 'iron',      ['label'] = 'Iron',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'iron.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['aluminum']      = {['name'] = 'aluminum',      ['label'] = 'Aluminum',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'aluminum.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['coal']      = {['name'] = 'coal',      ['label'] = 'Coal',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'coal.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['copper']      = {['name'] = 'copper',      ['label'] = 'Copper',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'copper.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['silver']      = {['name'] = 'silver',      ['label'] = 'Silver',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'silver.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['steel']      = {['name'] = 'steel',      ['label'] = 'Steel',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'steel.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['lead']      = {['name'] = 'lead',      ['label'] = 'Lead',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'lead.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['nitrate']      = {['name'] = 'nitrate',      ['label'] = 'Nitrate',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'nitrate.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['fibers']      = {['name'] = 'fibers',      ['label'] = 'Fibers',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'fibers.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['wood']      = {['name'] = 'wood',      ['label'] = 'Wood',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'wood.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['woodlog']      = {['name'] = 'woodlog',      ['label'] = 'Wooden Log',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'woodlog.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['woodplank']      = {['ame'] = 'woodplank',      ['label'] = 'Wooden Plank',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'woodplank.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['wood']      = {['name'] = 'wood',      ['label'] = 'Wood',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'wood.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['bark']      = {['name'] = 'bark',      ['label'] = 'Bark',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'bark.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['rubber']      = {['name'] = 'rubber',      ['label'] = 'Rubber',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'rubber.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    -- Oresn
    ['ironore']      = {['name'] = 'ironore',      ['label'] = 'Iron Ore',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'ironore.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['unrefined_steel']      = {['name'] = 'unrefined_steel',      ['label'] = 'Unrefined Steel',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'unrefined_steel.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['aluminum_ore']      = {['name'] = 'aluminum_ore',      ['label'] = 'Aluminum Ore',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'aluminum_ore.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['copper_ore']      = {['name'] = 'copper_ore',      ['label'] = 'Copper Ore',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'copper_ore.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['gold_ore']      = {['name'] = 'gold_ore',      ['label'] = 'Gold Ore',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'gold_ore.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['emeraldore']      = {['name'] = 'emeraldore',      ['label'] = 'Emerald Ore',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'emeraldore.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['diamondore']      = {['name'] = 'diamondore',      ['label'] = 'Diamond Ore',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'diamondore.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['rubyore']      = {['name'] = 'rubyore',      ['label'] = 'Ruby Ore',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'rubyore.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['silver_ore']      = {['name'] = 'silver_ore',      ['label'] = 'Silver Ore',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'silver_ore.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['stone']      = {['name'] = 'stone',      ['label'] = 'Stone',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'stone.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['rock']      = {['name'] = 'rock',      ['label'] = 'Rock',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'rock.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['rocksalt']      = {['name'] = 'rocksalt',      ['label'] = 'Rocksalt',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'rocksalt.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['sand']      = {['name'] = 'sand',      ['label'] = 'Sand',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'sand.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used for smelting down!'},
    ['nitratepowder']      = {['name'] = 'nitratepowder',      ['label'] = 'Nitrate Powder',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'nitratepowder.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    ['glass']      = {['name'] = 'glass',      ['label'] = 'Glass',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'glass.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A material used to craft with!'},
    -- Gems
    ['diamond']      = {['name'] = 'diamond',      ['label'] = 'Diamond',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'diamond.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A beautiful gem, often used to make jewelry with!'},
    ['ruby']      = {['name'] = 'ruby',      ['label'] = 'Ruby',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'ruby.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A beautiful gem, often used to make jewelry with!'},
    ['emerald']      = {['name'] = 'emerald',      ['label'] = 'Emerald',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'emerald.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A beautiful gem, often used to make jewelry with!'},
    -- Gold
    ['smallnugget']      = {['name'] = 'smallnugget',      ['label'] = 'Small Gold Nugget',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'smallnugget.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'Gold!'},
    ['mediumnugget']      = {['name'] = 'mediumnugget',      ['label'] = 'Medium Gold Nugget',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'mediumnugget.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'Gold!'},
    ['largenugget']      = {['name'] = 'largenugget',      ['label'] = 'Large Gold Nugget',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'largenugget.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'Gold!'},
    ['goldflakes']      = {['name'] = 'goldflakes',      ['label'] = 'Gold Flakes',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'goldflakes.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'Gold!'},
    
    -- Tools
    ['pickaxe']      = {['name'] = 'pickaxe',      ['label'] = 'Pickaxe',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'pickaxe.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A tool used to mine with!'},
    ['goldpan']      = {['name'] = 'goldpan',      ['label'] = 'Goldpan',       ['weight'] = 1, ['type'] = 'item', ['image'] = 'goldpan.png',      ['unique'] = true, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['level'] = 0, ['description'] = 'A tool to use for gold farming in rivers!'},
```

Items to add into database for VORP;
```
INSERT INTO items (item, label, `limit`, can_remove, type, usable, groupId, `desc`) VALUES 
('diamondore', 'Diamond Ore', 30, 1, 'item_standard', 0, 1, 'A beautiful gem'),
('rubyore', 'Ruby Ore', 30, 1, 'item_standard', 0, 1, 'A beautiful gem'),
('emeraldore', 'Emerald Ore', 30, 1, 'item_standard', 0, 1, 'A beautiful gem'),
('silver_ore', 'Silver Ore', 30, 1, 'item_standard', 0, 1, 'An ore that can be used to smelt down'),
('gold_ore', 'Gold Ore', 30, 1, 'item_standard', 0, 1, 'An ore that can be used to smelt down'),
('ironore', 'Iron Ore', 30, 1, 'item_standard', 0, 1, 'An ore that can be used to smelt down'),
('aluminum_ore', 'Aluminum Ore', 30, 1, 'item_standard', 0, 1, 'An ore that can be used to smelt down'),
('copper_ore', 'Copper Ore', 30, 1, 'item_standard', 0, 1, 'An ore that can be used to smelt down'),
('rocksalt', 'Rocksalt', 30, 1, 'item_standard', 0, 1, 'Salt from a rock, can be used to caft with');
```
Remember also to make pickaxe and rock usable by changing their value from 0 to 1 in items table in your database!
