require 'test_helper'


class ArticleSomethingTest < ActionDispatch::IntegrationTest

    test "it should return 200 on article index route" do 
        get '/articles'
        assert_response 200
    end

    test "it should get the show article" do 
        get('/articles/1')
        assert_response :success
    end
end