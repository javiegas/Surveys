require 'spec_helper'

describe "StaticPages" do
  
  describe "Home Page" do
    it "should have the content 'Welcome'" do
      visit '/'
      expect(page).to have_content('Welcome')
    end
    
    it "should have the right title 'HOME'" do
      visit '/'
      expect(page).to have_title("WHO HIV Resistance Database | HOME")
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("WHO HIV Resistance Database | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("WHO HIV Resistance Database | About Us")
    end
  end
    
end
