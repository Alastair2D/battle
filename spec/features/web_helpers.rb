def sign_in_and_play
  visit('/')
  fill_in('player_one', with: 'John')
  fill_in('player_two', with: 'Paul')
  click_on('Submit')
  srand 0
  click_on('WHO GOES FIRST?')
end
