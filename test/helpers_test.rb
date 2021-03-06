require File.join(File.dirname(__FILE__), 'test_helper')

class HelpersTest < Test::Unit::TestCase

  context "A class without a db table" do
    setup do
      @class = Article
    end
    should "return an empty array when asked about #safe_columns" do
      columns = @class.send :safe_columns
      assert_equal [], columns
    end
    should "survive an include of Pacecar" do
      assert_nothing_raised do
        @class.send :include, Pacecar
      end
    end
  end

end
