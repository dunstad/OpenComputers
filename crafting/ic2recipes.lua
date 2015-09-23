local recipes = {
  ["Reinforced Glass"] = {
    "Glass", "Advanced Alloy", "Glass",
    "Glass", "Glass", "Glass",
    "Glass", "Advanced Alloy", "Glass"
  },
  ["Electric Motor"] = {
    nil, "Tin Item Casing", nil,
    "Coil", "Iron Ingot", "Coil",
    nil, "Tin Item Casing"
  },
  Coil = {
    "Copper Cable", "Copper Cable", "Copper Cable",
    "Copper Cable", "Iron Ingot", "Copper Cable",
    "Copper Cable", "Copper Cable", "Copper Cable"
  },
  ["Insulated Copper Cable"] = {
    "Rubber Bar", "Copper Cable"
  },
  Luminator = {
    "Iron Item Casing", "Insulated Copper Cable", "Iron Item Casing",
    "Glass", "Tin Cable", "Glass",
    "Glass", "Glass", "Glass"
  },
  ["Electronic Circuit"] = {
    "Insulated Copper Cable", "Insulated Copper Cable", "Insulated Copper Cable",
    "Redstone", "Iron Plate", "Redstone",
    "Insulated Copper Cable", "Insulated Copper Cable", "Insulated Copper Cable"
  },
  ["Advanced Electronic Circuit"] = {
    "Redstone", "Glowstone Dust", "Redstone",
    "Lapis Lazuli", "Electronic Circuit", "Lapis Lazuli",
    "Redstone", "Glowstone Dust", "Redstone"
  },
  ["Basic Machine Casing"] = {
    "Iron Plate", "Iron Plate", "Iron Plate",
    "Iron Plate", nil, "Iron Plate",
    "Iron Plate", "Iron Plate", "Iron Plate"
  },
  ["Advanced Machine Casing"] = {
    "Refined Iron Plate", "Carbon Plate", "Refined Iron Plate",
    "Advanced Alloy", "Basic Machine Casing", "Advanced Alloy",
    "Refined Iron Plate", "Carbon Plate", "Refined Iron Plate"
  }
  Scanner = {
    "Iron Plate", "Reinforced Glass", "Iron Plate",
    "Electric Motor", "Luminator", "Electric Motor",
    "Advanced Circuit", "Advanced Machine Casing", "Advanced Circuit"
  },
  ["Frequency Transmitter"] = {
    "Electronic Circuit", "Insulated Copper Cable"
  },
  ["Energium Dust"] = {
    "Redstone", "Diamond Dust", "Redstone",
    "Diamond Dust", "Redstone", "Diamond Dust",
    "Redstone", Diamond Dust", "Redstone"
 }
 ["Glass Fibre Cable"] = {
   "Glass", "Glass", "Glass",
   "Energium Dust", "Silver Dust", "Energium Dust",
   "Glass", "Glass", "Glass"
 },
 Teleporter = {
   "Advanced Circuit", "Frequency Transmitter", "Advanced Circuit",
   "Glass Fibre Cable", "Advanced Machine Casing", "Glass Fibre Cable",
   "Advanced Circuit", "Diamond", "Advanced Circuit"
 },
 ["Insulated Gold Cable"] = {
   "Rubber Bar", "Rubber Bar", "Gold Cable"
 },
 ["MV-Transformer"] = {
   "Insulated Copper Cable", nil, nil,
   "Basic Machine Casing", nil, nil,
   "Insulated Copper Cable"
 },
 ["Advanced RE-Battery"] = {
   "Insulated Copper Cable", "Bronze Item Casing", "Insulated Copper Cable",
   "Bronze Item Casing", "Sulfur Dust", "Bronze Item Casing",
   "Bronze Item Casing", "Lead Dust", "Bronze Item Casing"
 },
 ["HV-Transformer"] = {
   nil, "Insulated Gold Cable", nil,
   "Electronic Circuit", "MV-Transformer", "Advanced RE-Battery",
   nil, "Insulated Gold Cable", nil
 },
 ["MFE"] = {
   "Insulated Gold Cable", "Energy Crystal", "Insulated Gold Cable",
   "Energy Crystal", "Basic Machine Casing", "Energy Crystal",
   "Insulated Gold Cable", "Energy Crystal", "Insulated Gold Cable"
 },
 Replicator = {
   "Reinforced Stone", "Reinforced Glass", "Reinforced Stone",
   "Teleporter", "Teleporter", "Teleporter",
   "HV-Transformer", "MFE", "HV-Transformer"
 },
 ["Mining Laser"] = {
   "Redstone", "Redstone", "Energy Crystal",
   "Advanced Alloy", "Advanced Alloy", "Advanced Circuit",
   nil, "Iron Turning Blank", "Advanced Alloy"
 },
 ["Manual Kinetic Generator"] = {
   "Basic Machine Casing", "Lever"
 },
 Lever = {
   "Stick", nil, nil,
   "Cobblestone"
 },
 Stick = {
   "Dark Oak Wood Planks", nil, nil,
   "Dark Oak Wood Planks"
 },
 ["Dark Oak Wood Planks"] = {
   "Dark Oak Wood"
 },
 
}