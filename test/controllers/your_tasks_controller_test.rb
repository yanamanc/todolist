require 'test_helper'

class YourTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @your_task = your_tasks(:one)
  end

  test "should get index" do
    get your_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_your_task_url
    assert_response :success
  end

  test "should create your_task" do
    assert_difference('YourTask.count') do
      post your_tasks_url, params: { your_task: {  id: @your_task. id, name: @your_task.name, project_id: @your_task.project_id, status: @your_task.status } }
    end

    assert_redirected_to your_task_url(YourTask.last)
  end

  test "should show your_task" do
    get your_task_url(@your_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_your_task_url(@your_task)
    assert_response :success
  end

  test "should update your_task" do
    patch your_task_url(@your_task), params: { your_task: {  id: @your_task. id, name: @your_task.name, project_id: @your_task.project_id, status: @your_task.status } }
    assert_redirected_to your_task_url(@your_task)
  end

  test "should destroy your_task" do
    assert_difference('YourTask.count', -1) do
      delete your_task_url(@your_task)
    end

    assert_redirected_to your_tasks_url
  end
end
