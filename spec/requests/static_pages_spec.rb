require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Shopalite'" do
      visit '/static_pages/home'
      expect(page).to have_content('Shopalite')
    end
  end

	describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end
end
