
def sign_in_and_play  
    visit('/')
    fill_in :player_1, with: 'Ellz'
    fill_in :player_2, with: 'Mr K'
    click_on 'Submit' 
end
