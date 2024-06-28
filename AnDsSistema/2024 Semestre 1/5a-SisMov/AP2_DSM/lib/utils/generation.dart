enum Generation { gen1, gen2, gen3, gen4, gen5, gen6, gen7, gen8 }

const Map<Generation, Map<String, int>> generationOffsets= {
  Generation.gen1: {'offset': 0, "limit": 151},
  Generation.gen2: {'offset': 151, 'limit': 100},
  Generation.gen3: {'offset': 251, 'limit': 135},
  Generation.gen4: {'offset': 386, 'limit': 107},
  Generation.gen5: {'offset': 493, 'limit': 156},
  Generation.gen6: {'offset': 649, 'limit': 72},
  Generation.gen7: {'offset': 721, 'limit': 88},
  Generation.gen8: {'offset': 809, 'limit': 89},
};