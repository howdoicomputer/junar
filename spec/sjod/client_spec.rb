describe SJOD do
  
  describe '.initialize' do
    client = SJOD::Client.new ({
      token: 'e60e3ec6c2d32969a95127968f03412f69f9b61c',
      uri: 'http://api.data.sanjoseca.gov'
    })

    it { expect(client.token).to be_a(String) }
  end

end
