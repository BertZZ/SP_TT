require 'analyser'
require 'file_opener'

describe Analyser do
  let(:file) {File.open('test.txt')}

  it 'is initialised with test data' do
    analyser = Analyser.new(file)
    expect(analyser.data).to eq("/help_page/1 126.318.035.038\n/contact 184.123.665.067\n/home 184.123.665.067\n/about/2 444.701.448.104\n/help_page/1 929.398.951.889\n")
  end

  describe '#remove_ip' do
    it 'removes the IP adresses from the logfile' do
      analyser = Analyser.new(file)
      data = analyser.data
      expect(analyser.remove_ip(data)).to eq(["/help_page/1","/contact","/home","/about/2","/help_page/1"])
    end
  end

  describe '#analyse_page_views' do
    it 'returns a list of webpages and their view count' do
      analyser = Analyser.new(file)
      expect(analyser.analyse_page_views).to eq({"/help_page/1" => 2, "/contact" => 1, "/home" => 1, "/about/2" => 1})
    end
  end
end
