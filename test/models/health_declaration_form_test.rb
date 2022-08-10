require "test_helper"

class HealthDeclarationFormTest < ActiveSupport::TestCase
  
  def setup
    @hdf = HealthDeclarationForm.new
  end

  test "should not save health declaration form without name, temperature, symptom and suspect contact" do  
    assert_not @hdf.save, "Saved the health declaration form without name, temperature, symptom and suspect contact"
  end

  test "name should not be too short" do
    @hdf.name = "Ann"
    assert_not @hdf.valid?
  end

  test "temperature should not be text" do
    @hdf.temperature = "abc"
    assert_not @hdf.valid?
  end


end
