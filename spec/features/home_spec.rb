require 'rails_helper'

RSpec.describe 'Home Page', type: :feature do
  describe 'As a User' do
    describe 'When I visit the Home Page' do
      before(:each) do
        visit '/home'
      end

      it "I see a button to submit for random answer (with a fake question field)" do
        # fill_in "pseudo", with: "Fake question?"

        expect(page).to have_button("Shake ball to reveal answer")

        click_button("Shake ball to reveal answer")

        expect(current_path).to eq('/answer')
      end
    end
  end
end
