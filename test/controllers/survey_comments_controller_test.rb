require 'test_helper'

class SurveyCommentsControllerTest < ActionController::TestCase
  setup do
    @survey_comment = survey_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_comment" do
    assert_difference('SurveyComment.count') do
      post :create, survey_comment: { comment: @survey_comment.comment, survey_id: @survey_comment.survey_id }
    end

    assert_redirected_to survey_comment_path(assigns(:survey_comment))
  end

  test "should show survey_comment" do
    get :show, id: @survey_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_comment
    assert_response :success
  end

  test "should update survey_comment" do
    patch :update, id: @survey_comment, survey_comment: { comment: @survey_comment.comment, survey_id: @survey_comment.survey_id }
    assert_redirected_to survey_comment_path(assigns(:survey_comment))
  end

  test "should destroy survey_comment" do
    assert_difference('SurveyComment.count', -1) do
      delete :destroy, id: @survey_comment
    end

    assert_redirected_to survey_comments_path
  end
end
