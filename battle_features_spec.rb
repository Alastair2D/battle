# feature "Battle Features" do

#   scenario 'display player hit points' do
#     visit('/')
#     fill_in :player_one, with: 'John'      # fill_in('player1', with: 'John')
#     fill_in :player_two, with: 'Paul'      # fill_in('player2', with: 'Paul')
#     click_on('Submit')
#     click_on('WHO GOES FIRST?')
#     expect(page).to have_content('60')
#   end

#   scenario 'allows player 1 to attack player 2' do
#     sign_in_and_play
#     click_button('ATTACK OPPONENT')
#     expect(page).to have_content('John attacked Paul')
#   end

#   scenario 'attack reduces player 2 hit points by 10' do
#     sign_in_and_play
#     click_button('ATTACK OPPONENT')
#     expect(page).to have_content '50'
#   end

#   describe 'Switch turns' do 
#     context 'seeing the current turn' do 
#       scenario 'at the start of the game' do 
#         sign_in_and_play
#         click_button('ATTACK OPPONENT')
#       end
#     end
#   end



# end
