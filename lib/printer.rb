class Printer

  def self.print_visits(data)
    data.each { |page| puts "#{page[0]}: #{page[1]} views\n"}
  end
end
