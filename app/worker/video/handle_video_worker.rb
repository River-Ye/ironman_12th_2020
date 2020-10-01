# frozen_string_literal: true

module Video
  class HandleVideoWorker
    include Sidekiq::Worker
    sidekiq_options retry: 0, dead: true, queue: 'video_worker'

    VIDEO_PATH = Rails.root.join('data/attachments/videos')

    # NOTE:
    # need install ffmpeg, url: https://github.com/FFmpeg/FFmpeg
    # need install cpulimit, url: https://github.com/opsengine/cpulimit
    def perform(url = nil)
      # 以此影片為範例，出處: Videvo
      url = 'https://cdn.videvo.net/videvo_files/video/free/2013-05/originalContent/DigitalCountdownTimerVidevo.mov'
      video_name = parse_video_name(url)
      video_file_path(video_name)
      download_video(url)
      converter
    rescue StandardError => e
      logger.error "[Video::HandleVideoWorker] ERROR:\n #{e.inspect}\n #{e.backtrace}"
    end

    private

    def logger
      FileLog.logger('worker/video/video_worker.log')
    end

    def parse_video_name(url)
      url.split('/')[-1] # "DigitalCountdownTimerVidevo.mov"
    end

    def video_file_path(video_name)
      @input_file = VIDEO_PATH.join(video_name)
      mp4_format = video_name.split('.')[0] + '.mp4'
      @output_file = VIDEO_PATH.join("converted-#{mp4_format}")
    end

    def download_video(url)
      resp = HTTP.get(url)
      save_origin_video(resp)
    end

    def save_origin_video(video_response)
      FileUtils.mkdir_p(VIDEO_PATH)
      File.write(@input_file, video_response.to_s.force_encoding('UTF-8'))
    end

    def converter
      priority = 'nice -n 20 cpulimit -l 80' # cpulimit: 限制 CPU usage (目前上限設 80%)
      ffmpeg_threads = 'ffmpeg -threads 2'   # ffmpeg -threads: 設定 CPU 核心數 (目前設定 2)
      `#{priority} -i #{ffmpeg_threads} -i #{@input_file} #{@output_file}`
    end
  end
end
