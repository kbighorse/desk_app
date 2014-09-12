require "rails_helper"

describe "Label" do
  describe "#index", type: :feature do
    describe "see existing labels" do

      it "displays a list of all past labels" do
        visit "/labels"
        expect(page).to have_content("Labels")
        within('table') do
          expect(page).to have_content("Abandoned Chats")
          expect(page).to have_content("Escalated")
        end
      end
    end

    # describe "#create" do
    #   it "should allow a user to create a new label successfully" do
    #     visit "/labels/new"
    #     fill_in('Name', with: 'Label 1')
    #     fill_in('Description', with: 'Really Long Text…')
    #     check('Enabled')
    #     click_button "Submit"
    #     expect(page).to have_content("Label 1")
    #     within('table.labels') do
    #       expect(page).to have_content(/Label \d+/)
    #     end
    #   end
    # end
  end

end
