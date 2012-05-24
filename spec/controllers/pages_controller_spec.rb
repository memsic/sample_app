require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
      it "should be successful" do
        get 'home'
        response.should be_success
      end
      
      it "should have the right title" do
        visit '/pages/home'
        page.should have_selector("title", 
                                  :text => "#{@base_title} | Home")
      end
  end

  describe "GET 'contact'" do
      it "should be successful" do
        get 'contact'
        response.should be_success
      end
      
      it "should have the right title" do
        visit '/pages/contact'
        page.should have_selector("title", 
                                  :text => "#{@base_title} | Contact")        
      end
  end

  describe "GET 'about'" do
      it "should be successful" do
        get 'about'
        response.should be_success
      end
        
      it "should have the right title" do
        visit '/pages/about'
        page.should have_selector("title", 
                                  :text => "#{@base_title} | About")        
      end
  end
end
