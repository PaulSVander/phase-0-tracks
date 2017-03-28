require_relative 'game'

describe Game do
  let(:game) { game.new("unicorn") }

  it "has a readable display word" do
    expect(dancer.displayed_word).to eq "_ _ _ _ _ _ _"
  end
end