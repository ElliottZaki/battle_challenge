feature "To attack opposing player" do

    scenario 'To attack Player_2' do
    #arrange
    sign_in_and_play
    click_link "Attack"
    #assert
    expect(page).to have_content 'Ellz attacked Mr K'
    end
end