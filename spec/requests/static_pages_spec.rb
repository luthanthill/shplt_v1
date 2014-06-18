require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Shopalite'" do
      visit '/static_pages/home'
      expect(page).to have_content('Shopalite')
    end

  	it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Shopalite")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('Home -')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact Us - Shopalite")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("About - Shopalite")
    end
  end
end
