require 'spec_helper'

describe Rsack::Server do

  def server
    Rack::MockRequest.new(Rsack::Server.new(
                            Rack::Session::Cookie.new(
                              RockPaperScissors::App.new,
                                :key => 'rack.session',
                                :domain => 'example.com',
                                :secret => 'some_secret')))
  end

  context '/' do
    it "Should return a 200 code" do
      response = server.get('/')
      response.status.should == 200
    end
  end

  context '/?choice=rock' do
    it "Should return a 200 code" do
      response = server.get('/')
      response.status.should == 200
    end
  end

  context '/?choice=paper' do
    it "Should return a 200 code" do
      response = server.get('/')
      response.status.should == 200
    end
  end

  context '/?choice=scissors' do
    it "Should return a 200 code" do
      response = server.get('/')
      response.status.should == 200
    end
  end

  context '/?choice=reset' do
    it "Should return a 200 code" do
      response = server.get('/')
      response.status.should == 200
    end
  end

  #it "Should exist a player throw" do
  #  puts server
  #  server.respond_to?("player_throw").should == true
  #end
end
