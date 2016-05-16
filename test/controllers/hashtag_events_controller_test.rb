require 'test_helper'

class HashtagEventsControllerTest < ActionController::TestCase
  setup do
    @hashtag_event = hashtag_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hashtag_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hashtag_event" do
    assert_difference('HashtagEvent.count') do
      post :create, hashtag_event: { event_id: @hashtag_event.event_id, hashtag_id: @hashtag_event.hashtag_id }
    end

    assert_redirected_to hashtag_event_path(assigns(:hashtag_event))
  end

  test "should show hashtag_event" do
    get :show, id: @hashtag_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hashtag_event
    assert_response :success
  end

  test "should update hashtag_event" do
    patch :update, id: @hashtag_event, hashtag_event: { event_id: @hashtag_event.event_id, hashtag_id: @hashtag_event.hashtag_id }
    assert_redirected_to hashtag_event_path(assigns(:hashtag_event))
  end

  test "should destroy hashtag_event" do
    assert_difference('HashtagEvent.count', -1) do
      delete :destroy, id: @hashtag_event
    end

    assert_redirected_to hashtag_events_path
  end
end
