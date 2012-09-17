require File.join(File.dirname(__FILE__), "/../spec_helper" )

module Mastermind
  describe Game do
    context "starting up" do
      it "should send a welcome message" do
        messenger = mock("messenger").as_null_object
        game = Game.new(messenger)
        messenger.should_receive(:puts).with("Welcome to Mastermind!")
        game.start
      end
      it "should prompt for the first guess" do
        messenger = mock("messenger").as_null_object
        game = Game.new(messenger)
        messenger.should_receive(:puts).with("Enter guess:")
        game.start
      end
    end
  end
end