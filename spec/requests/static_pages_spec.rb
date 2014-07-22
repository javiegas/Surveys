require 'spec_helper'

describe "StaticPages" do
  
  describe "Home Page" do
    it "should have the content 'Welcome'" do
      visit '/'
      expect(page).to have_content('Welcome')
    end
    
    it "should have the base title" do
      visit '/'
      expect(page).to have_title("WHO HIV Resistance Database v0.1")
    end
    
    it "should not have a custom title" do
      visit '/'
      expect(page).not_to have_title("|")
    end
    
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("WHO HIV Resistance Database v0.1 | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("WHO HIV Resistance Database v0.1 | About Us")
    end
  end
    
end
