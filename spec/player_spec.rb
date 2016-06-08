require 'player'

describe Player do

subject(:player) {described_class.new("Tim")}

  it "returns a name" do
    expect(player.name).to eq("Tim")
  end
end