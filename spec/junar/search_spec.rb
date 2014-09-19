describe Junar::Search do
  before(:each) do
    @client = Junar::Client.new ({
      token: 'd759b5b71ce13ac5e74bfa466a5caf033a1c5931',
      uri: 'http://api.data.sanjoseca.gov'
    })
  end

  describe '.search' do
    it 'should return results from a datastreams query', :vcr do
      result = @client.search category: 'datastreams', query: 'FIRE'

      expect(result).to be_a(Array)
    end

    it 'should return results from a dashboards query', :vcr do
      result = @client.search category: 'dashboards', query: 'FIRE'

      expect(result).to be_a(Array)
    end
  end
end
