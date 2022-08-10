require "test_helper"

class HealthDeclarationFormsControllerTest < ActionDispatch::IntegrationTest
  
  
  # setup do
  #   @hdf = HealthDeclarationForm.create(name: "Test name", temperature: 35.5, symptom: true, suspect_contact: true)
  # end

  test "should get index" do
    get health_declaration_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_health_declaration_form_url
    assert_response :success
  end

end
