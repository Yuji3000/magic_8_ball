require 'rails_helper'

RSpec.describe 'Answer Page', type: :feature do
  describe 'As a User' do
    describe 'When I visit the Answer Page' do
      before(:each) do

        response1 = Answer.create!(response: "It is certain.")
        response2 = Answer.create!(response: "It is decidedly so.")
        response3 = Answer.create!(response: "Without a doubt.")
        response4 = Answer.create!(response: "Yes definitely.")
        response5 = Answer.create!(response: "You may rely on it.")
  
        response6 = Answer.create!(response: "As I see it, yes.")
        response7 = Answer.create!(response: "Most likely.")
        response8 = Answer.create!(response: "Outlook good.")
        response9 = Answer.create!(response: "Yes.")
        response10 = Answer.create!(response: "Signs point to yes.")
  
        response11 = Answer.create!(response: "Reply hazy, try again.")
        response12 = Answer.create!(response: "Ask again later.")
        response13 = Answer.create!(response: "Better not tell you now.")
        response14 = Answer.create!(response: "Cannot predict now.")
        response15 = Answer.create!(response: "Concentrate and ask again.")
  
        response16 = Answer.create!(response: "Don't count on it.")
        response17 = Answer.create!(response: "My reply is no.")
        response18 = Answer.create!(response: "My sources say no.")
        response19 = Answer.create!(response: "Outlook not so good.")
        response20 = Answer.create!(response:"Very doubtful.")
        visit '/answer'
   
      end
      it "shows the answer to your question" do

        expect(page).to have_content("Answer is")
      end

      it "has a button to go back to /home" do
        expect(page).to have_button("Ask Another Question!")
      end
    end
  end
end
