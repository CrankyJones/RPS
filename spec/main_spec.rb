require ('rspec')
require ('main')

describe(RPS) do
  describe('#rps_plays') do
    it('reads the value of a new RPS instance') do
      game = RPS.new()
      expect(game.rps_plays()).to(eq({1=>"rock", 2=>"paper", 3=>"scissors"}))
    end
  end
  describe('wins?') do
    it("returns true if player 1 chooses rock(1) and computer chooses scissors(3) ") do
      game = RPS.new()
      expect(game.wins?(1, 3)).to(eq(true))
    end
    it("returns true if player 1 wins") do
      game = RPS.new()
      expect(game.wins?(1, 3)).to(eq(true))
      expect(game.wins?(2, 1)).to(eq(true))
      expect(game.wins?(3, 2)).to(eq(true))
    end
    
  end


end


