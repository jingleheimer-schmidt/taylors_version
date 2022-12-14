
local rusty_locale = require '__rusty-locale__.locale'

local reordered_types = {
  "recipe",
  -- "font",
  -- "noise-layer",
  -- "gui-style",
  -- "utility-constants",
  -- "utility-sounds",
  -- "sprite",
  -- "utility-sprites",
  -- "god-controller",
  -- "editor-controller",
  -- "spectator-controller",
  -- "noise-expression",
  -- "mouse-cursor",
  "virtual-signal",
  "flying-text",
  "item",
  "fluid",
  "tile",
  -- "ambient-sound",
  -- "wind-sound",
  "container",
  "explosion",
  "character-corpse",
  -- "optimized-particle",
  "character",
  "furnace",
  "transport-belt",
  "fish",
  "boiler",
  "electric-pole",
  "generator",
  "offshore-pump",
  "inserter",
  "item-entity",
  "pipe",
  "radar",
  "lamp",
  "arrow",
  "pipe-to-ground",
  "assembling-machine",
  "entity-ghost",
  "tile-ghost",
  "deconstructible-tile-proxy",
  "item-request-proxy",
  "cliff",
  "wall",
  "lab",
  "highlight-box",
  "splitter",
  "underground-belt",
  "loader",
  "loader-1x1",
  "car",
  "gate",
  "train-stop",
  "rail-signal",
  "rail-chain-signal",
  "solar-panel",
  "accumulator",
  "electric-energy-interface",
  "player-port",
  "land-mine",
  "logistic-container",
  "rocket-silo",
  "rocket-silo-rocket",
  "rocket-silo-rocket-shadow",
  "roboport",
  "storage-tank",
  "pump",
  "market",
  "beacon",
  "smoke-with-trigger",
  "sticker",
  "reactor",
  "heat-pipe",
  "simple-entity-with-force",
  "simple-entity-with-owner",
  "flame-thrower-explosion",
  -- "artillery-flare",
  "unit",
  "speech-bubble",
  "spider-vehicle",
  "spider-leg",
  "infinity-container",
  "infinity-pipe",
  "burner-generator",
  "heat-interface",
  "linked-container",
  "linked-belt",
  "custom-input",
  "fire",
  "mining-drill",
  "particle-source",
  "stream",
  "resource",
  "turret",
  "ammo-turret",
  "corpse",
  "electric-turret",
  "artillery-turret",
  "unit-spawner",
  "straight-rail",
  "curved-rail",
  "locomotive",
  "cargo-wagon",
  "fluid-wagon",
  "artillery-wagon",
  "simple-entity",
  "rail-remnants",
  "tree",
  "trivial-smoke",
  "combat-robot",
  "construction-robot",
  "logistic-robot",
  "capsule",
  "repair-tool",
  "copy-paste-tool",
  "blueprint",
  "tool",
  "item-with-entity-data",
  "rail-planner",
  "upgrade-item",
  "deconstruction-item",
  "blueprint-book",
  "spidertron-remote",
  "selection-tool",
  "item-with-tags",
  "item-with-label",
  "item-with-inventory",
  "module",
  "ammo",
  "gun",
  "armor",
  "mining-tool",
  "item-group",
  "item-subgroup",
  -- "recipe",
  "autoplace-control",
  -- "map-settings",
  -- "map-gen-presets",
  -- "tile-effect",
  "optimized-decorative",
  "damage-type",
  "ammo-category",
  "fuel-category",
  "recipe-category",
  "resource-category",
  "module-category",
  "equipment-grid",
  "equipment-category",
  "shortcut",
  -- "trigger-target-type",
  "projectile",
  "artillery-projectile",
  "beam",
  "technology",
  -- "tips-and-tricks-item",
  -- "tips-and-tricks-item-category",
  "build-entity-achievement",
  "research-achievement",
  "finish-the-game-achievement",
  "group-attack-achievement",
  "construct-with-robots-achievement",
  "deconstruct-with-robots-achievement",
  "deliver-by-robots-achievement",
  "train-path-achievement",
  "player-damaged-achievement",
  "produce-achievement",
  "produce-per-hour-achievement",
  "dont-use-entity-in-energy-production-achievement",
  "kill-achievement",
  "combat-robot-count",
  "dont-craft-manually-achievement",
  "dont-build-entity-achievement",
  "achievement",
  "fluid-turret",
  "arithmetic-combinator",
  "decider-combinator",
  "constant-combinator",
  "programmable-speaker",
  "power-switch",
  "tutorial",
  "night-vision-equipment",
  "energy-shield-equipment",
  "battery-equipment",
  "solar-panel-equipment",
  "generator-equipment",
  "active-defense-equipment",
  "movement-bonus-equipment",
  "roboport-equipment",
  "belt-immunity-equipment",
  "smoke",
  -- "particle",
  -- "leaf-particle"
}

for _,type_name in pairs(reordered_types) do
  for _, prototype in pairs(data.raw[type_name]) do
    local taylors_version = {
      "item-name.taylors-version",
      rusty_locale.of(prototype).name
    }
    prototype.localised_name = taylors_version
  end
end
