local dnd = require 'dnd-character'
require('assertions')

describe('dnd', function()
  describe('modifier', function()
    [$dnd.modifier~ "should return -4 for score 3" ["3"] "-4"]
    [$dnd.modifier~ "should return -3 for score 4" ["4"] "-3"]
    [$dnd.modifier~ "should return -3 for score 5" ["5"] "-3"]
    [$dnd.modifier~ "should return -2 for score 6" ["6"] "-2"]
    [$dnd.modifier~ "should return -2 for score 7" ["7"] "-2"]
    [$dnd.modifier~ "should return -1 for score 8" ["8"] "-1"]
    [$dnd.modifier~ "should return -1 for score 9" ["9"] "-1"]
    [$dnd.modifier~ "should return 0 for score 10" ["10"] "0"]
    [$dnd.modifier~ "should return 0 for score 11" ["11"] "0"]
    [$dnd.modifier~ "should return +1 for score 12" ["12"] "1"]
    [$dnd.modifier~ "should return +1 for score 13" ["13"] "1"]
    [$dnd.modifier~ "should return +2 for score 14" ["14"] "2"]
    [$dnd.modifier~ "should return +2 for score 15" ["15"] "2"]
    [$dnd.modifier~ "should return +3 for score 16" ["16"] "3"]
    [$dnd.modifier~ "should return +3 for score 17" ["17"] "3"]
    [$dnd.modifier~ "should return +4 for score 18" ["18"] "4"]  end)

  describe('ability', function()
    it('random ability is within range', function()
      for i = 1, 10 do
        local ability_score = dnd.ability()
        assert.equal('integer', math.type(ability_score))
        assert.lteq(3, ability_score)
        assert.lteq(ability_score, 18)
      end
    end)
  end)

  describe('Character', function()
    it('creates a character with the supplied name', function()
      local names = {
        'Alice',
        'Bob',
        'Charlie',
        'David',
        'Eve',
        'Fred',
        'Ginny',
        'Harriet',
        'Ileana',
        'Joseph',
        'Kincaid',
        'Larry'
      }
      for _, name in ipairs(names) do
        assert.equal(name, dnd.Character:new(name).name)
      end
    end)

    it('random character is valid', function()
      local character = dnd.Character:new('Alice')

      assert.lteq(3, character.strength)
      assert.lteq(character.strength, 18)

      assert.lteq(3, character.dexterity)
      assert.lteq(character.dexterity, 18)

      assert.lteq(3, character.constitution)
      assert.lteq(character.constitution, 18)

      assert.lteq(3, character.intelligence)
      assert.lteq(character.intelligence, 18)

      assert.lteq(3, character.wisdom)
      assert.lteq(character.wisdom, 18)

      assert.lteq(3, character.charisma)
      assert.lteq(character.charisma, 18)

      assert.equal(10 + dnd.modifier(character.constitution), character.hitpoints)
    end)

    it('each ability is calculated once', function()
      local character = dnd.Character:new('Bob')

      assert.equal(character.strength, character.strength)
      assert.equal(character.dexterity, character.dexterity)
      assert.equal(character.constitution, character.constitution)
      assert.equal(character.intelligence, character.intelligence)
      assert.equal(character.wisdom, character.wisdom)
      assert.equal(character.charisma, character.charisma)
      assert.equal(character.hitpoints, character.hitpoints)
    end)
  end)
end)
