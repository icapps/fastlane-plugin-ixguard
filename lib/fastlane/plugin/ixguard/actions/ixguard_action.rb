module Fastlane
  module Actions
    class IxguardAction < Action
      def self.run(params)
        require 'shellwords'

        begin
          config_file = params[:config].shellescape
          output_file = params[:output].shellescape
          ipa_file = params[:ipa].shellescape
          command = "ixguard -c=#{config_file} -o=#{output_file} #{ipa_file}"
          Fastlane::Actions.sh(command, log: false)
        rescue => ex
          UI.user_error!("Error unzipping file: #{ex}")
        end
      end

      def self.description
        "iXGuard build plugin"
      end

      def self.authors
        ["Evgeniy Kubyshin"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "iXGuard build plugin"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "IXGUARD_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
