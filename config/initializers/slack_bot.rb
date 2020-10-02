# frozen_string_literal: true

require 'slack-ruby-client'

Slack.configure do |config|
  config.token = Rails.application.secrets.slack[:slack_api_token]
end
