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
        @game.start(%w[r g y c])
      end
      it "should prompt user for first guess" do
        @messenger.should_receive(:puts).with("Enter guess:")
        @game.start(%w[r g y c])
      end      
    end    
    context "marking a guess"  do
      context "with all four colors in the correct places" do
        it "should mark the guess with a bbbb" do
          messenger = double("messenger").as_null_object
          game = Game.new(messenger)
          game.start(%w[r g y c])
          messenger.should_receive(:puts).with("bbbb")
          game.guess(%w[r g y c])
        end
      end
      context "with all four colors and two in the correct places" do
        it "should mark the guess with bbww" do
          messenger = double("messenger").as_null_object
          game = Game.new(messenger)
          game.start(%w[r g y c])
          messenger.should_receive(:puts).with("bbww")
          game.guess(%w[r g c y])
        end
      end
      context "with all 4 colors correct and 1 in the correct place" do 
        it "should mark the guess with bwww" do
          messenger = double("messenger").as_null_object 
          game = Game.new(messenger)
          game.start(%w[r g y c])
          messenger.should_receive(:puts).with("bwww")
          game.guess(%w[y r g c])
        end 
      end
    end
  end
end