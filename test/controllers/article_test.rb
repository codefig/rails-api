require 'test_helper'
require "helpers/json_api_helper"


class ArticleSomethingTest < ActionDispatch::IntegrationTest
    include JsonApiHelper

    def setup

    end

    test "it should return 200 on article index route" do 
        get '/articles'
        assert_response 200
    end


    test "it should get the show article" do 

        count = 3
        create_list(:article, count)

        get ("/articles")
        # pp("Response "  + response.body)
        response = json
        data = json_data
       
        assert_response :success
        assert_equal(count, data.length)
    end

    test "should paginate article result" do 
        create_list(:article, 6)

        get "/articles", params: {page: 2}
        assert_response :success
        pp('Fsys : ' + json_data.inspect)
        assert_equal(json_data.length, 3)
    end
end