Given(/^I am not yet playing$/) do
  
end

When(/^I start a new game "(.*?)"$/) do |code|
  @messenger = StringIO.new
  game = Mastermind::Game.new(@messenger) 
  game.start(code)
end

Then(/^the game should say "(.*?)"$/) do |message|
  expect(@messenger.string.split("\n")).to include(message)
end

Given(/^the secret code is "(.*?)"$/) do |code|
  @messenger = StringIO.new
  game = Mastermind::Game.new(@messenger)
  game.start(code.split)
end