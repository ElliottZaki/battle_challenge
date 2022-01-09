
feature "Fill in the name" do

    scenario 'submitting two player names' do
    #arrange
        sign_in_and_play
    #assert
        expect(page).to have_content("Elliott vs Jess")
    end
end


