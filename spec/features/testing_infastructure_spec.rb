
feature "Testing infastructure" do
    #subject (:battle) {Battle.new}

    scenario 'home page shows message: Testing infrastructure working!' do
        visit('/test')
        expect(page).to have_content("Testing infrastructure working!")
    end
end