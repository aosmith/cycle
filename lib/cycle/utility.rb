module Cycle
  module Utility
    class << self
      def number_of_cores
        case RbConfig::CONFIG['host_os']
        when /darwin9/
          `hwprefs cpu_count`.to_i
        when /darwin/
          ((`which hwprefs` != '') ? `hwprefs thread_count` : `sysctl -n hw.ncpu`).to_i
        when /linux/
          `cat /proc/cpuinfo | grep processor | wc -l`.to_i
        when /freebsd/
          `sysctl -n hw.ncpu`.to_i
        end
      end
    end
  end
end
