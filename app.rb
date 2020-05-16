require 'slack-ruby-bot'

class Slackbot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end
end

Slackbot.run