require "minitest/autorun"

class TestAutotest; end
class TestAutotest::TestClear < MiniTest::Unit::TestCase
  def test_sanity
    flunk
  end
end
