require 'spec_helper'

describe PagesController do
  render_views

  before (:each) do
    # Base title
    @base_title = "Arquitectar | "
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                                    :content => @base_title + "Introduction")
    end
  end

  describe "GET 'news'" do
    it "should be successful" do
      get 'news'
      response.should be_success
    end

    it "should have the right title" do
      get 'news'
      response.should have_selector("title",
                                    :content => @base_title + "News")
    end    
  end  

  describe "GET 'collaboration'" do
    it "should be successful" do
      get 'collaboration'
      response.should be_success
    end

    it "should have the right title" do
      get 'collaboration'
      response.should have_selector("title",
                                    :content => @base_title + "Collaboration")
    end    
  end  

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                                    :content => @base_title + "Contact")
    end    
  end   
end
