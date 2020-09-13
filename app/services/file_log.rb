# frozen_string_literal: true

class FileLog
  @loggers ||= {}

  def self.logger(location)
    @loggers[location] ||= create_logger(location)
  end

  def self.create_logger(location)
    if ENV['RAILS_LOG_TO_STDOUT']
      logger = Logger.new(STDOUT)
      logger.progname = File.basename(location, '.log')
      logger.formatter = Rails.configuration.log_formatter
    else
      FileUtils.mkdir_p(Rails.root.join('log', File.dirname(location)))
      logger = Logger.new(Rails.root.join('log', location))
      logger.formatter = proc do |severity, datetime, _progname, msg|
        "#{severity} [#{datetime.strftime('%Y-%m-%d %H:%M:%S.%6N')}]: #{msg}\n"
      end
    end
    ActiveSupport::TaggedLogging.new(logger)
  end
end
