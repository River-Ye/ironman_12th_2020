# frozen_string_literal: true

class CheckWorker
  include Sidekiq::Worker
  sidekiq_options retry: 0, queue: 'check_worker'

  def perform
    puts 'At minute 30.'
  end
end
