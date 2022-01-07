
feature "Fill in the name" do

    scenario 'submitting two player names' do
    #arrange
    visit('/')
    fill_in :player_1, with: 'Ellz'
    fill_in :player_2, with: 'Mr K'
    click_on 'Submit' 
    #assert
    expect(page).to have_content("Ellz vs Mr K")
    end

end