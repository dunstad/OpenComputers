local recipes = {
  Transistor = {
    "Iron Nugget", "Iron Nugget", "Iron Nugget",
    "Gold Nugget", "Paper", "Gold Nugget",
    nil, "Redstone", nil
  },
  Paper = {"Sugar Canes", "Sugar Canes", "Sugar Canes"},
  ["Iron Nugget"] = {"Iron Ingot"},
  ["Iron Ingot"] = {"Block of Iron"},
  ["Gold Nugget"] = {"Gold Ingot"},
  ["Gold Ingot"] = {"Block of Gold"},
  ["Dark Oak Wood Planks"] = {"Dark Oak Wood"},
  Stick = {
    "Dark Oak Wood Planks", nil, nil,
    "Dark Oak Wood Planks"
  },
  Chest = {
    "Dark Oak Wood Planks", "Dark Oak Wood Planks", "Dark Oak Wood Planks",
    "Dark Oak Wood Planks", nil, "Dark Oak Wood Planks",
    "Dark Oak Wood Planks", "Dark Oak Wood Planks", "Dark Oak Wood Planks"
  },
  Capacitor = {
    "Iron Ingot", "Transistor", "Iron Ingot",
    "Gold Nugget", "Paper", "Gold Nugget",
    "Iron Ingot", "Printed Circuit Board (PCB)", "Iron Ingot"
  },
  ["Redstone Torch"] = {
    "Redstone", nil, nil,
    "Stick"
  },
  Analyzer = {
    "Redstone Torch", nil, nil,
    "Transistor", "Gold Nugget", nil,
    "Printed Circuit Board (PCB)", "Gold Nugget", nil
  },
  ["OpenComputers Manual"] = {"Book", "Microchip (Tier 1)"},
  Book = {"Leather", "Paper", "Paper", "Paper"},
  ["Microchip (Tier 1)"] = {
    "Iron Nugget", nil, "Iron Nugget",
    "Redstone", "Transistor", "Redstone",
    "Iron Nugget", nil, "Iron Nugget"
  },
  ["Microchip (Tier 2)"] = {
    "Gold Nugget", nil, "Gold Nugget",
    "Redstone", "Transistor", "Redstone",
    "Gold Nugget", nil, "Gold Nugget"
  },
  ["Microchip (Tier 3)"] = {
    "Diamond", nil, "Diamond",
    "Redstone", "Transistor", "Redstone",
    "Diamond", nil, "Diamond"
  },
  ["Iron Bars"] = {
    "Iron Ingot", "Iron Ingot", "Iron Ingot",
    "Iron Ingot", "Iron Ingot", "Iron Ingot"
  },
  ["Computer Case (Tier 1)"] = {
    "Iron Ingot", "Microchip (Tier 1)", "Iron Ingot",
    "Iron Bars", "Chest", "Iron Bars",
    "Iron Ingot", "Printed Circuit Board (PCB)", "Iron Ingot"
  },
  ["Computer Case (Tier 2)"] = {
    "Gold Ingot", "Microchip (Tier 2)", "Gold Ingot",
    "Iron Bars", "Chest", "Iron Bars",
    "Gold Ingot", "Printed Circuit Board (PCB)", "Gold Ingot"
  },
  ["Computer Case (Tier 3)"] = {
    "Diamond", "Microchip (Tier 3)", "Diamond",
    "Iron Bars", "Chest", "Iron Bars",
    "Diamond", "Printed Circuit Board (PCB)", "Diamond"
  },
  ["EEPROM"] = {
    "Gold Nugget", "Transistor", "Gold Nugget",
    "Paper", "Microchip (Tier 1)", "Paper",
    "Gold Nugget", "Redstone Torch", "Gold Nugget"
  },
  ["EEPROM (Lua BIOS)"] = {"EEPROM", "OpenComputers Manual"},
  Clock = {
    nil, "Gold Ingot", nil,
    "Gold Ingot", "Redstone", "Gold Ingot",
    nil, "Gold Ingot", nil
  },
  ["Control Unit (CU)"] = {
    "Gold Nugget", "Redstone", "Gold Nugget",
    "Transistor", "Clock", "Transistor",
    "Gold Nugget", "Transistor", "Gold Nugget"
  },
  ["Arithmetic Logic Unit (ALU)"] = {
    "Iron Nugget", "Redstone", "Iron Nugget",
    "Transistor", "Microchip (Tier 1)", "Transistor",
    "Iron Nugget", "Transistor", "Iron Nugget"
  },
  ["Central Processing Unit (CPU) (Tier 1)"] = {
    "Iron Nugget", "Redstone", "Iron Nugget",
    "Microchip (Tier 1)", "Control Unit (CU)", "Microchip (Tier 1)",
    "Iron Nugget", "Arithmetic Logic Unit (ALU)", "Iron Nugget"
  },
  ["Central Processing Unit (CPU) (Tier 2)"] = {
    "Gold Nugget", "Redstone", "Gold Nugget",
    "Microchip (Tier 2)", "Control Unit (CU)", "Microchip (Tier 2)",
    "Gold Nugget", "Arithmetic Logic Unit (ALU)", "Gold Nugget"
  },
  ["Central Processing Unit (CPU) (Tier 3)"] = {
    "Emerald", "Redstone", "Emerald",
    "Microchip (Tier 3)", "Control Unit (CU)", "Microchip (Tier 3)",
    "Emerald", "Arithmetic Logic Unit (ALU)", "Emerald"
  },
  ["Card Base"] = {
    "Iron Nugget", nil, nil,
    "Iron Nugget", "Printed Circuit Board (PCB)", nil,
    "Iron Nugget", "Gold Nugget", nil
  },
  ["Memory (Tier 1)"] = {
    "Microchip (Tier 1)", "Iron Nugget", "Microchip (Tier 1)",
    nil, "Printed Circuit Board (PCB)"
  },
  ["Memory (Tier 1.5)"] = {
    "Microchip (Tier 1)", "Microchip (Tier 2)", "Microchip (Tier 1)",
    nil, "Printed Circuit Board (PCB)"
  },
  ["Memory (Tier 2)"] = {
    "Microchip (Tier 2)", "Iron Nugget", "Microchip (Tier 2",
    nil, "Printed Circuit Board (PCB)"
  },
  ["Memory (Tier 2.5)"] = {
    "Microchip (Tier 2)", "Microchip (Tier 3)", "Microchip (Tier 2)",
    nil, "Printed Circuit Board (PCB)"
  },
  ["Memory (Tier 3)"] = {
    "Microchip (Tier 3)", "Iron Nugget", "Microchip (Tier 3)",
    nil, "Printed Circuit Board (PCB)"
  },
  ["Memory (Tier 3.5)"] = {
    "Microchip (Tier 3)", "Microchip (Tier 3)", "Microchip (Tier 3)",
    "Microchip (Tier 2)", "Printed Circuit Board (PCB)", "Microchip (Tier 2)"
  },
  ["Graphics Card (Tier 1)"] = {
    "Microchip (Tier 1)", "Arithmetic Logic Unit (ALU)", "Memory (Tier 1)",
    nil, "Card Base"
  },
  ["Graphics Card (Tier 2)"] = {
    "Microchip (Tier 2)", "Arithmetic Logic Unit (ALU)", "Memory (Tier 2)",
    nil, "Card Base"
  },
  ["Graphics Card (Tier 3)"] = {
    "Microchip (Tier 3)", "Arithmetic Logic Unit (ALU)", "Memory (Tier 3)",
    nil, "Card Base"
  },
  ["Disk Platter"] = {
    nil, "Iron Nugget", nil,
    "Iron Nugget", nil, "Iron Nugget",
    nil, "Iron Nugget", nil
  },
  ["Piston"] = {
    "Dark Oak Wood Planks", "Dark Oak Wood Planks", "Dark Oak Wood Planks",
    "Cobblestone", "Iron Ingot", "Cobblestone",
    "Cobblestone", "Redstone", "Cobblestone"
  },
  ["Hard Disk Drive (Tier 1) (1MB)"] = {
    "Microchip (Tier 1)", "Disk Platter", "Iron Ingot",
    "Printed Circuit Board (PCB)", "Disk Platter", "Piston",
    "Microchip (Tier 1)", "Disk Platter", "Iron Ingot"
  },
  ["Hard Disk Drive (Tier 2) (2MB)"] = {
    "Microchip (Tier 2)", "Disk Platter", "Gold Ingot",
    "Printed Circuit Board (PCB)", "Disk Platter", "Piston",
    "Microchip (Tier 2)", "Disk Platter", "Gold Ingot"
  },
  ["Hard Disk Drive (Tier 3) (3MB)"] = {
    "Microchip (Tier 3)", "Disk Platter", "Diamond",
    "Printed Circuit Board (PCB)", "Disk Platter", "Piston",
    "Microchip (Tier 3)", "Disk Platter", "Diamond"
  },
  ["Dropper"] = {
    "Cobblestone", "Cobblestone", "Cobblestone",
    "Cobblestone", nil, "Cobblestone",
    "Cobblestone", "Redstone", "Cobblestone"
  },
  ["Hopper"] = {
    "Iron Ingot", nil, "Iron Ingot",
    "Iron Ingot", "Chest", "Iron Ingot",
    nil, "Iron Ingot", nil
  },
  ["Inventory Upgrade"] = {
    "Dark Oak Wood Planks", "Hopper", "Dark Oak Wood Planks",
    "Dropper", "Chest", "Piston",
    "Dark Oak Wood Planks", "Microchip (Tier 1)", "Dark Oak Wood Planks"
  },
  ["Crafting Table"] = {
    "Dark Oak Wood Planks", "Dark Oak Wood Planks", nil,
    "Dark Oak Wood Planks", "Dark Oak Wood Planks"
  },
  ["Crafting Upgrade"] = {
    "Iron Ingot", nil, "Iron Ingot",
    "Microchip (Tier 1)", "Crafting Table", "Microchip (Tier 1)",
    "Iron Ingot", "Printed Circuit Board (PCB)", "Iron Ingot"
  },
  ["Inventory Controller Upgrade"] = {
    "Gold Ingot", "Analyzer", "Gold Ingot",
    "Dropper", "Microchip (Tier 2)", "Piston",
    "Gold Ingot", "Printed Circuit Board (PCB)", "Gold Ingot"
  },
  ["Disk Drive"] = {
    "Iron Ingot", "Microchip (Tier 1)", "Iron Ingot",
    "Piston", "Stick", nil,
    "Iron Ingot", "Printed Circuit Board (PCB)", "Iron Ingot"
  },
  Interweb = {
    "String", "String", "String",
    "String", "Ender Pearl", "String",
    "String", "String", "String"
  },
  ["Internet Card"] = {
    "Interweb", "Microchip (Tier 2)", "Redstone Torch",
    nil, "Card Base", "Obsidian"
  },
  Lever = {
    "Stick", nil, nil,
    "Cobblestone"
  },
  ["Floppy Disk"] = {
    "Iron Nugget", "Lever", "Iron Nugget",
    "Paper", "Disk Platter", "Paper",
    "Iron Nugget", "Paper", "Iron Nugget"
  },
}
 
return recipes