class PublishPost
  include Interactor

  def call
    context.post = Post.new(context.post_params)
    unless context.post.save
      context.fail!
    end
  end
end
