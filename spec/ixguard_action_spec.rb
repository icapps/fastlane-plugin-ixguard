describe Fastlane::Actions::IxguardAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The ixguard plugin is working!")

      Fastlane::Actions::IxguardAction.run(nil)
    end
  end
end
