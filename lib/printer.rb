class Printer

  def self.print_visits(data)
    puts "Total Page Views:"
    data.each { |page| print "#{page[0]}: #{page[1]} visits\n"}
  end

  def self.print_unique_views(data)
    puts "\nUnique Visitors:"
    data.each { |page| print "#{page[0]}: #{page[1]} unique views\n"}
  end
end
