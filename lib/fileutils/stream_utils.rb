# frozen_string_literal: true

module FileUtils
  module StreamUtils_
    private

    case (defined?(::RbConfig) ? ::RbConfig::CONFIG['host_os'] : ::RUBY_PLATFORM)
    when /mswin|mingw/
      def fu_windows?; true end
    else
      def fu_windows?; false end
    end

    def fu_copy_stream0(src, dest, blksize = nil)   #:nodoc:
      IO.copy_stream(src, dest)
    end

    def fu_stream_blksize(*streams)
      streams.each do |s|
        next unless s.respond_to?(:stat)
        size = fu_blksize(s.stat)
        return size if size
      end
      fu_default_blksize()
    end

    def fu_blksize(st)
      s = st.blksize
      return nil unless s
      return nil if s == 0
      s
    end

    def fu_default_blksize
      1024
    end
  end
end
