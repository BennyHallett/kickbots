require 'minitest'
require 'minitest/autorun'
require 'kickbots/messages/init'

class TestInitMessage < Minitest::Test
  def test_create_message_with_no_team_name_fails
    begin
      InitMessage.new nil
      assert false, 'Should not be able to create Init Message with no team name'
    rescue
      # expected
    end
  end
end
