require 'spec_helper'

pref = "Ruby on Rails Tutorial Sample App"
describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
     visit root_path
     expect(page).to have_content('Sample App')
    end
    it "should have the right title" do
      visit root_path
      expect(page).to have_title("#{pref}")
    end
    
    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end
  describe "Help page" do
      it "should have the content 'Help'" do
        visit help_path
        expect(page).to have_content('Help')
      end
      it "should have the title 'Help'" do
        visit help_path
        expect(page).to have_title("#{pref} | Help")
      end

  end
  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have title 'About Us'" do
      visit about_path
      expect(page).to have_title("#{pref} | About Us")
    end
    end
   describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
   end
    it "shoud have title 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{pref} | Contact")
   end 
end
end
