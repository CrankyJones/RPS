require ('rspec')
require ('main')

describe(RPS) do
  describe('#rps_plays') do
    it('reads the value of a new RPS instance') do
      game = RPS.new()
      expect(game.rps_plays()).to(eq({1=>"rock", 2=>"paper", 3=>"scissors"}))
    end
  end
  describe('wins') do
    it("returns true if player 1 chooses rock(1) and computer chooses scissors(3) ") do
      game = RPS.new()
      expect(game.wins(1, 3)).to(eq(true))
    end
    it("returns true if player 1 wins") do
      game = RPS.new()
      expect(game.wins(1, 3)).to(eq(true))
      expect(game.wins(2, 1)).to(eq(true))
      expect(game.wins(3, 2)).to(eq(true))
    end
    it("returns false if player 1 loses") do
      game = RPS.new()
      expect(game.wins(2, 3)).to(eq(false))
      expect(game.wins(3, 1)).to(eq(false))
      expect(game.wins(1, 2)).to(eq(false))
    end
    it("returns 'DRAW' if there is a tie") do
      game = RPS.new()
      expect(game.wins(2, 2)).to(eq('DRAW'))
      expect(game.wins(3, 3)).to(eq('DRAW'))
      expect(game.wins(1, 1)).to(eq('DRAW'))
    end
    
  end


end


