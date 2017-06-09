RSpec.describe Hanami::Action do
  describe '.before' do
    it 'invokes the method(s) from the given symbol(s) before the action is run' do
      action = BeforeMethodAction.new(configuration: configuration)
      action.call({})

      expect(action.article).to          eq('Bonjour!'.reverse)
      expect(action.logger.join(' ')).to eq('Mr. John Doe')
    end

    it 'invokes the given block before the action is run' do
      action = BeforeBlockAction.new(configuration: configuration)
      action.call({})

      expect(action.article).to eq('Good morning!'.reverse)
    end
  end
end