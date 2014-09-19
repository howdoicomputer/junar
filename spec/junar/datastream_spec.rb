describe Junar::Client do
  before(:each) do
    @client = Junar::Client.new ({
      token: '32fe345768b51b927c2a5b13607cd5266cef2bce',
      uri: 'http://api.data.sanjoseca.gov'
    })
  end

  describe '.datastream' do
    it 'should represent the datastream resource' do
      datastream = @client.datastream
      uri = datastream.resource

      expect(uri).to match "datastream"
    end
  end

  describe '.search' do
    it "should return the results from a search query" do
      results = @client.datastream.search({
        query: 'FIRE'
      })

      expect(results.response.code).to eq(200)
    end
  end

  describe '.invoke' do
    it 'should return a datastream object' do
      stream = @client.datastream.invoke({
        guid: 'FIRE-DEPAR',
      })

      expect(stream.response.code).to eq(200)
    end
  end
end
