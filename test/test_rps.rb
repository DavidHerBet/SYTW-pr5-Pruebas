# encoding: UTF-8
require "test/unit"
require "rack/test"
require "./lib/rps"

class RPSAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::Builder.new do
      run RockPaperScissors::App.new
    end.to_app
  end

  def test_index
    get "/"
    assert last_response.ok?
  end

  def test_paper_choice
    get "/?choice=paper"
    assert last_response.ok?
  end

  def test_rock_choice
    get "/?choice=rock"
    assert last_response.ok?
  end
  
  def test_scissors_choice
    get "/?choice=scissors"
    assert last_response.ok?
  end
end
