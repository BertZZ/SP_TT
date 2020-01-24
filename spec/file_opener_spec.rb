require 'file_opener'

describe FileOpener do
  describe '#open' do
    it 'opens the requested file' do # I'm really not sure about this test
      file = FileOpener.open('test.txt')
      expect(file.closed?).to be_falsy
    end
  end
end
