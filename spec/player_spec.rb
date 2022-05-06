require 'player'

describe Player do
  let(:subject) { Player.new("Tom") }
  it 'returns the name of the player' do
    expect(subject.name).to eq "Tom"
  end
end
