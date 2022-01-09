feature "To attack opposing player" do

    scenario 'confirmation message to indicate an attack took place' do
    #arrange
        sign_in_and_play
        click_button "Attack"
    #assert
        expect(page).to have_content('Elliott attacked Jess')
    end


    scenario 'Reducing Player_2s HP by 20' do
    #arrange
        sign_in_and_play
        click_button "Attack"
    #assert
        expect(page).not_to have_content('Jess: 100HP')
        expect(page).to have_content('Jess: 80HP')
    end
end
