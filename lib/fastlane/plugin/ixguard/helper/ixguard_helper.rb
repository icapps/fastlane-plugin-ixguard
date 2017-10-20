module Fastlane
  module Helper
    class IxguardHelper
      # class methods that you define here become available in your action
      # as `Helper::IxguardHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the ixguard plugin helper!")
      end
    end
  end
end
