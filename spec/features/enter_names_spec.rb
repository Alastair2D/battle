feature "Battle Features" do

  feature "Homepage" do
    scenario "loads correctly" do
      visit("/")
      expect(page).to have_content("Player 1:")
      expect(page).to have_content("Player 2:")
      expect(page).to have_field("player_one")
      expect(page).to have_field("player_one")
    end
  end

  feature "Users can enter player names" do
    scenario "two player game" do
      sign_in_and_play
      expect(page).to have_content("Player 1: John")
      expect(page).to have_content("Player 2: Paul")
    end
  end

  feature "Shows relevant names" do
    before do
      sign_in_and_play
    end
    it "finds two names entered" do
      expect(page).to have_content("Player 1: John")
      expect(page).to have_content("Player 2: Paul")
    end
  end
  
end
