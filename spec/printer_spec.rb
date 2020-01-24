require 'printer'

describe Printer do
  describe '#print_visits' do
    it 'pretty prints the results of the page views to the console' do
      data = [["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]]
      expect { Printer.print_visits(data) }.to output("/about/2: 90 views\n/contact: 89 views\n/index: 82 views\n/about: 81 views\n/help_page/1: 80 views\n/home: 78 views\n").to_stdout
    end
  end
end
