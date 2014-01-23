require 'minitest'
require 'minitest/autorun'
require 'kickbots/messages/init'

class TestInitMessage < Minitest::Test
  def test_create_message_with_no_team_name_fails
    assert_raises RuntimeError do
      InitMessage.new nil
    end
  end

  def test_create_message_with_team
    msg = InitMessage.new 'kickbots'
    assert_equal '(init kickbots)', msg.payload
  end
end
