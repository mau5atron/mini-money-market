require 'test_helper'

class BorrowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrower = borrowers(:one)
  end

  test "should get index" do
    get borrowers_url
    assert_response :success
  end

  test "should get new" do
    get new_borrower_url
    assert_response :success
  end

  test "should create borrower" do
    assert_difference('Borrower.count') do
      post borrowers_url, params: { borrower: { company_name: @borrower.company_name, current_position: @borrower.current_position, email: @borrower.email, employer_state: @borrower.employer_state, employer_street: @borrower.employer_street, employer_zip: @borrower.employer_zip, first_name: @borrower.first_name, last_name: @borrower.last_name, phone: @borrower.phone, salary: @borrower.salary, start_date: @borrower.start_date, state: @borrower.state, street: @borrower.street, zip: @borrower.zip } }
    end

    assert_redirected_to borrower_url(Borrower.last)
  end

  test "should show borrower" do
    get borrower_url(@borrower)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrower_url(@borrower)
    assert_response :success
  end

  test "should update borrower" do
    patch borrower_url(@borrower), params: { borrower: { company_name: @borrower.company_name, current_position: @borrower.current_position, email: @borrower.email, employer_state: @borrower.employer_state, employer_street: @borrower.employer_street, employer_zip: @borrower.employer_zip, first_name: @borrower.first_name, last_name: @borrower.last_name, phone: @borrower.phone, salary: @borrower.salary, start_date: @borrower.start_date, state: @borrower.state, street: @borrower.street, zip: @borrower.zip } }
    assert_redirected_to borrower_url(@borrower)
  end

  test "should destroy borrower" do
    assert_difference('Borrower.count', -1) do
      delete borrower_url(@borrower)
    end

    assert_redirected_to borrowers_url
  end
end
