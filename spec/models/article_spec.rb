require 'spec_helper'

describe Article do

  before(:each) do
    @user = FactoryGirl.create(:user)
    @type = FactoryGirl.create(:type)
    @attr = { title: "New article",
              type_id: @type.id,
              content: "A laaaarge content for the article.",
              created_by_id: @user.id,
              updated_by_id: @user.id }
  end

  it "should create a new instance given valid attributes" do
    Article.create!(@attr)
  end

  describe "validations" do
    it "should require a title" do
      no_title_article = Article.new(@attr.merge(title: ''))
      no_title_article.should_not be_valid
    end

    it "should require a type" do
      no_type_article = Article.new(@attr.merge(type: nil))
      no_type_article.should_not be_valid
    end

    it "should require a content" do
      no_content_article = Article.new(@attr.merge(content: ''))
      no_content_article.should_not be_valid
    end

    it "should require a creator user" do
      no_created_by_article = Article.new(@attr.merge(created_by: nil))
      no_created_by_article.should_not be_valid      
    end

    it "should reject duplicate titles" do
      Article.create!(@attr)
      duplicated_article = Article.new(@attr)
      duplicated_article.should_not be_valid
    end

    it "should reject titles identical up to case" do
      upcased_title = @attr[:title].upcase
      Article.create!(@attr.merge(title: upcased_title))
      duplicated_article = Article.new(@attr)
      duplicated_article.should_not be_valid
    end
  end

  describe "user associations" do
    before(:each) do
      @article = Article.create(@attr)
    end

    it "should have a created_by attribute" do
      @article.should respond_to(:created_by)
    end

    it "should have an updated_by attribute" do
      @article.should respond_to(:updated_by)
    end
    
    it "should have the right associated creation user" do
      @article.created_by_id.should == @user.id
      @article.created_by.should == @user
    end

    it "should have the right associated update user" do
      @article.updated_by_id.should == @user.id
      @article.updated_by.should == @user
    end
  end
end
