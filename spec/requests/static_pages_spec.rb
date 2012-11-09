require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have h1 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the basic title" do
      visit root_path
      page.should have_selector('title',
                :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have the custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => "| Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit help_path
  		page.should have_selector('h1', :text => 'Help')
  	end

    it "should have the right title" do
      visit help_path
      page.should have_selector('title',
                :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      visit about_path
      page.should have_selector('title',
                :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "shoudld have the right title" do
      visit contact_path  
      page.should have_selector('title', 
                :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
