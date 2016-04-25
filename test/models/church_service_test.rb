require 'test_helper'

class ChurchServiceTest < ActiveSupport::TestCase
  test "the church service count" do
    services = ChurchService.all
    assert_equal services.size, 2
  end
end
