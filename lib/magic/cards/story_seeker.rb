module Magic
  module Cards
    StorySeeker = Creature("Story Seeker") do
      cost generic: 1, white: 1
      creature_type("Dwarf Cleric")
      keywords :lifelink
      power 2
      toughness 2
    end
  end
end
