module Mastermind
  class Game
    def initialize(messenger)
      @messenger = messenger
    end

    def start(code=nil)
      @messenger.puts "Welcome to Mastermind!"
      @messenger.puts "Enter guess:"
    end
    def guess(guess)
      @messenger.puts "bbbb"
    end

  end
end