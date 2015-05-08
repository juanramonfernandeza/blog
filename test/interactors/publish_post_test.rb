require 'test_helper'

class PublishPostTest < ActiveSupport::TestCase

  context ".call" do
    setup do
      @params = { title: "Potato", body: "Badger" }
    end

    should "contain a post" do
      @result = PublishPost.call(post_params: @params)
      assert_instance_of Post, @result.post
    end

    context "when saved" do
      setup do
        Post.stubs(new: stub(save: true))
        @result = PublishPost.call(post_params: @params)
      end

      should "succeed" do
        assert @result.success?
      end
    end

    context "when not saved" do
      setup do
        Post.stubs(new: stub(save: false))
        @result = PublishPost.call(post_params: @params)
      end

      should "fail" do
        assert @result.failure?
      end
    end

  end
end
