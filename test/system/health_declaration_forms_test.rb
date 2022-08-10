require "application_system_test_case"

class HealthDeclarationFormsTest < ApplicationSystemTestCase
  

  test "should submit Health Declaration Form" do
    visit new_health_declaration_form_path
  
    fill_in "Name", with: "Test Name"
    fill_in "Temperature", with: 35.5
    choose "health_declaration_form_symptom_true"
    choose "health_declaration_form_suspect_contact_true"

    click_on "Submit"

    #assert_redirected_to new_health_declaration_form_path
  
    assert_text "You have successfully submitted the form"
  end
end
