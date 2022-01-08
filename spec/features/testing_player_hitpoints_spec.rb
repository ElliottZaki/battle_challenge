feature "To see player's hitpoints" do

    scenario 'To see hitpoints' do
    #arrange
    sign_in_and_play
    #assert
    expect(page).to have_content('Mr K: 100HP')
    end

end
