require 'file_opener'

describe FileOpener do
  describe '#open' do
    it 'opens the requested file' do # I'm really not sure about this test
      file = FileOpener.open('test.txt')
      expect(file.closed?).to be_falsy
    end

    it 'errors if the file does not exist' do
      expect{ FileOpener.open('test1.txt') }.to output("The file does not exist\n").to_stdout
    end
  end
end
