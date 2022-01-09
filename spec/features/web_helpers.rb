
def sign_in_and_play  
    visit('/')
    fill_in :player_1, with: 'Elliott'
    fill_in :player_2, with: 'Jess'
    click_on 'Submit' 
end
