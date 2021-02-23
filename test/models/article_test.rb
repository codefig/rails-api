require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.new
  end

  test "the truth" do
    assert_nil(@article.title)
  end

 

  def should_test_for_emptiness 

    assert true
  end
end
