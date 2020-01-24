require_relative 'file_opener'
require_relative 'analyser'

file = FileOpener.open(ARGV[0])
analyser = Analyser.new(file)

puts analyser.analyse_page_views
