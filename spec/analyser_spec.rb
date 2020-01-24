require 'analyser'

describe Analyser do
  let(:file) {File.open('test.txt')}

  it 'is initialised with test data' do
    analyser = Analyser.new(file)
    expect(analyser.data).to eq("/help_page/1 126.318.035.038\n/contact 184.123.665.067\n/contact 184.123.665.067\n/home 184.123.665.067\n/about/2 444.701.448.104\n/help_page/1 929.398.951.889\n")
  end

  describe '#map_data' do
    it 'turns the data string into an array' do
      analyser = Analyser.new(file)
      expect(analyser.map_data(analyser.data))
    end
  end

  describe '#remove_ip' do
    it 'removes the IP adresses from the logfile' do
      analyser = Analyser.new(file)
      data = analyser.map_data(analyser.data)
      expect(analyser.remove_ip(data)).to eq(["/help_page/1","/contact" ,"/contact","/home","/about/2","/help_page/1"])
    end
  end

  describe '#analyse_page_views' do
    it 'returns a list of webpages and their view count' do
      analyser = Analyser.new(file)
      expect(analyser.analyse_page_views).to eq([["/contact", 2], ["/help_page/1", 2], ["/about/2", 1], ["/home", 1]])
    end
  end

  describe '#analyse_unique_views' do
    it 'returns a list of unique viewers of a webpage' do
      analyser = Analyser.new(file)
      expect(analyser.analyse_unique_views).to eq([["/help_page/1", 2], ["/about/2", 1], ["/home", 1], ["/contact", 1]])
    end
  end
end
