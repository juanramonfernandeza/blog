require 'test_helper'

class SetIndexFlashTest < ActiveSupport::TestCase
  test ".call when is hansolo it suceeds" do
    @context = SetIndexFlash.call(tenant: "hansolo")
    assert @context.success?
  end

  test ".call when is hansolo has the correct message" do
    @context = SetIndexFlash.call(tenant: "hansolo")
    assert_equal "It's really cold out there.", @context.message
  end

  test ".call when is chewbacca it suceeds" do
    @context = SetIndexFlash.call(tenant: "chewbacca")
    assert @context.success?
  end

  test ".call when is chewbacca has the correct message" do
    @context = SetIndexFlash.call(tenant: "chewbacca")
    assert_equal "Have you grred today?", @context.message
  end
  test ".call when is uknown it fails" do
    @context = SetIndexFlash.call(tenant: "vader")
    assert_not @context.success?
  end

  test ".call when is unknown has the correct message" do
    @context = SetIndexFlash.call(tenant: "vader")
    assert_equal "Idk what to tell you...", @context.message
  end
end
