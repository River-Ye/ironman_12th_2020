# frozen_string_literal: true

class HelloWorldWorker
  @queue = :hello_world_worker

  def self.perform(user_id, string)
    puts "#{user_id} say #{string}"
  end
end
