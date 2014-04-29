require File.join(File.dirname(__FILE__), "/../spec_helper")

module Mastermind
  describe Game do
    context "starting up" do
      # when using the before(:each) need to use instance variables!
      before(:each) do
        @messenger = double("messenger").as_null_object
        @game = Game.new(@messenger)
      end
      it "should send a welcome message" do
        @messenger.should_receive(:puts).with("Welcome to Mastermind!")
        @game.start
      end
      it "should prompt user for first guess" do
        @messenger.should_receive(:puts).with("Enter guess:")
        @game.start
      end
    end    
  end
end