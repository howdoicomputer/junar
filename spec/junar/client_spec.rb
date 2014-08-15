describe Junar do
  before(:each) do
    @client = Junar::Client.new ({
      token: 'e60e3ec6c2d32969a95127968f03412f69f9b61c',
      uri: 'http://api.data.sanjoseca.gov'
    })
  end

  describe '.initialize' do
    it { expect(@client).to be_a(Junar::Client) }
  end

  describe '.token' do
    it { expect(@client.token).to be_a(String) }
  end

  describe '.uri' do
    it { expect(@client.uri). to be_a(String) }
  end
end
