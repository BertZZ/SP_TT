class FileOpener # It opens the file
  def self.open(file)
    File.exists?(file) ? File.open(file) : (puts 'The file does not exist')
  end
end
