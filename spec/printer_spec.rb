require 'printer'

describe Printer do #It prints the data nicely to the console
  describe '#print_visits' do
    it 'pretty prints the results of the page views to the console' do
      data = [["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]]
      expect { Printer.print_visits(data) }.to output("Total Page Views:\n/about/2: 90 visits\n/contact: 89 visits\n/index: 82 visits\n/about: 81 visits\n/help_page/1: 80 visits\n/home: 78 visits\n").to_stdout
    end
  end

  describe '#print_unique_views' do
    it 'pretty prints the results of the unique views to the console' do
      data = [["/index", 23], ["/home", 23], ["/contact", 23], ["/help_page/1", 23], ["/about/2", 22], ["/about", 21]]
      expect { Printer.print_unique_views(data) }.to output("\nUnique Visitors:\n/index: 23 unique views\n/home: 23 unique views\n/contact: 23 unique views\n/help_page/1: 23 unique views\n/about/2: 22 unique views\n/about: 21 unique views\n").to_stdout
    end
  end
end
