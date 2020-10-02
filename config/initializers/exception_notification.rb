# frozen_string_literal: true

Rails.application.config.middleware.use ExceptionNotification::Rack, slack: {
  webhook_url: Rails.application.secrets.slack[:webhook_url],
  channel: 'river-demo',
}
