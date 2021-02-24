require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.new()
    @article.title = "some new thign"
    @article.content = "something new"
    @article.slug = "programming"
  end

  test "should validate the presence of the title" do
    assert(!@article.title.nil?)
    assert(@article.valid?)
  end

  test "it should validte the presence of the content" do 
    assert(!@article.content.nil?)
  end

  test "it should ensure uniqueness of slug" do 
    first_article = Article.new(:title=> "something", :content=>"hacker", "slug"=> "programming")
    first_article.save()

    second_article = Article.new(:title=> "something", :content=>"hacker", "slug"=> "programming")
    # assert(!second_article.slug.nil?)

    assert(!second_article.valid?)
  end


 
end
