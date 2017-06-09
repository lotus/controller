RSpec.describe Hanami::Action do
  describe '.after' do
    it 'invokes the method(s) from the given symbol(s) after the action is run' do
      action = AfterMethodAction.new(configuration: configuration)
      action.call({})

      expect(action.egg).to eq('gE!g')
      expect(action.logger.join(' ')).to eq('Mrs. Jane Dixit')
    end

    it 'invokes the given block after the action is run' do
      action = AfterBlockAction.new(configuration: configuration)
      action.call({})

      expect(action.egg).to eq('Coque'.reverse)
    end
  end
end