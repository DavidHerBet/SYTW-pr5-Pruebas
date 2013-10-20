require 'rack/request'
require 'rack/response'
require 'haml'

module RockPaperScissors
  class App 
 
    def initialize(app = nil)
      @app = app
      @content_type = :html
      @defeat = {:rock => :scissors, :paper => :rock, :scissors => :paper}
      @throws = @defeat.keys
      @results = {:win => "You win the match.",
                  :loose => "You loose, computer wins.",
                  :tie => "There is a tie."}
      @counter = {:games => 0,
                  :won => 0,
                  :lost => 0,
                  :ties => 0}
    end

    # Getters y setters
    attr_reader :results
    attr_accessor :computer_throw, :player_throw, :answer, :counter

    def call(env)
      req = Rack::Request.new(env)
      @computer_throw = @throws.sample
      @player_throw = req.GET["choice"]
      @player_throw = player_throw.to_sym if !player_throw.nil?
      @answer = if !@throws.include?(player_throw)
        ""
        elsif player_throw == computer_throw
          @counter[:ties] +=1
          @answer = self.results[:tie]
        elsif computer_throw == @defeat[player_throw]
          @counter[:won] +=1
          @answer = self.results[:win]
        else
          @counter[:lost] +=1
          @answer = self.results[:loose]
        end
        if !player_throw.nil? and (:reset == player_throw)
          @counter.each_key {|key, value| @counter[key] = 0}
        elsif @throws.include?(player_throw)
          @counter[:games] += 1
        else
          @counter[:games] = @counter[:games]
        end
                     
      engine = Haml::Engine.new File.open("views/index.haml").read 
      res = Rack::Response.new
      res.write engine.render({}, 
          :answer => @answer, 
          :choose => @choose,
          :throws => @throws,
          :computer_throw => @computer_throw,
          :player_throw => @player_throw,
          :counter => @counter)
      res.finish
    end # call
  end   # App
end     # RockPaperScissors

# Usar como librería/programa  
if $0 == __FILE__
  require 'rack'
  Rack::Server.start(
    :app => RockPaperScissors::App.new, 
    :Port => 9292,
    :server => 'thin'
  )
end
