feature "To see player's hitpoints" do

    scenario 'To see hitpoints' do
    #arrange
    visit('/')
    fill_in :player_1, with: 'Ellz'
    fill_in :player_2, with: 'Mr K: 100HP'
    click_on 'Submit' 
    #assert
    expect(page).to have_content('Mr K: 100HP')
    end

end
