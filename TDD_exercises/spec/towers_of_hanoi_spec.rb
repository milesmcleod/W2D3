
require 'towers_of_hanoi'
require 'rspec'
describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }

  describe '#move' do

    it 'moves smallest disk from one pile to another' do
      game.move(0, 2)
      expect(game.grid[2]).to eq([1])
      expect(game.grid[0]).to eq([3,2])
    end

    it 'does not move larger disk onto smaller disk' do
      game.grid = [[3,2], [1], []]
      expect {game.move(0, 1)}.to raise_error("Invalid move")
    end

  end

  describe '#won?' do

    it 'returns false at the start' do
      expect(game.won?).to be false
    end

    it 'returns true if won' do
      game.grid = [[], [],[3,2,1]]
      expect(game.won?).to be true
      game.grid = [[],[3,2,1], []]
      expect(game.won?).to be true
    end

  end

end
