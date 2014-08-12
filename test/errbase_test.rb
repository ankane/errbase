require_relative "test_helper"

class TestErrbase < Minitest::Test

  def test_errbase
    Errbase.report(RuntimeError.new("Boom"))
  end

end
