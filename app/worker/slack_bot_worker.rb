# frozen_string_literal: true

class SlackBotWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'robot', retry: 3

  DEFAULT_CHANNEL = 'river-demo'
  SLACK_ID_TABLE = { river: Rails.application.secrets.slack[:river] }.freeze

  def perform(msg, options = {})
    hostname = Socket.gethostname
    ip_address = Socket.ip_address_list.find { |ai| ai.ipv4? && !ai.ipv4_loopback? }.ip_address
    slack_bot = Slack::Web::Client.new
    channel = options['channel'].presence || DEFAULT_CHANNEL
    names = options['names'].present? ? [options['names']].flatten : []
    names_tags = names.map { |name| "<@#{SLACK_ID_TABLE[name.to_sym]}>" }.join('')
    slack_bot.chat_postMessage(
      channel: channel,
      text: "[#{hostname}][#{ip_address}] #{names_tags}#{msg}",
      as_user: true,
    )
  end
end
