require_relative 'file_opener'
require_relative 'analyser'
require_relative 'printer'

file = FileOpener.open(ARGV[0])
analyser = Analyser.new(file)

Printer.print_visits(analyser.analyse_page_views)
