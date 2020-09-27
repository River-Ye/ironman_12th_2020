# frozen_string_literal: true

module Api
  class CreateOrderWorker
    include Sidekiq::Worker
    sidekiq_options retry: 7, dead: true, queue: 'create_order_worker'

    sidekiq_retry_in { |count| count + 86_400 }

    sidekiq_retries_exhausted do |msg, _ex|
      subject = "[Api::CreateOrderWorker]Out of retries! #{msg['class']} with #{msg['args']}"
      _message = "error: #{msg['error_message']}"
      FileLog.logger('worker/api/create_order_worker.log').error(subject)
      # ...
    end

    def perform(user_id)
      logger.info "====== start ====== user_id: #{user_id}"
      puts 'hello world'
      logger.info '====== done ======'
    rescue StandardError => e
      logger.error "[Api::CreateOrderWorker] ERROR:\n #{e.inspect}\n #{e.backtrace}"
    end

    private

    def logger
      FileLog.logger('worker/api/create_order_worker.log')
    end
  end
end
