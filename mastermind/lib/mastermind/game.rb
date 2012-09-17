module Mastermind
  class Game
    def initialize(messenger)
        @messenger = messenger
    end

    def start(code=nil)
        @messenger.puts "Welcome to Mastermind!"
        @messenger.puts "Enter guess:"
    end
  end
end