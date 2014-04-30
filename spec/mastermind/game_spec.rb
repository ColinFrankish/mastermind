require File.join(File.dirname(__FILE__), "/../spec_helper")

module Mastermind
  describe Game do
    context "starting up" do
      # when using the before(:each) need to use instance variables!
      before(:each) do
        @messenger = double("messenger").as_null_object
        @game = Game.new(@messenger)
      end
      it "should send a welcome message (passing the code to start)" do
        @messenger.should_receive(:puts).with("Welcome to Mastermind!")
        @game.start(%w[rgyc])
      end
      it "should prompt user for first guess" do
        @messenger.should_receive(:puts).with("Enter guess:")
        @game.start(%w[rgyc])
      end
    end    
  end
end