class Analyser #It analyses the data

  attr_reader :data

  def initialize(file)
    @data = file.read
  end

  def map_data(data)
    data.split("\n").map
  end

  def remove_ip(array)
    pages =[]
    array.each {|page| pages << page.split(' ')[0]}
    pages
  end
  
  def analyse_page_views
    array = map_data(@data)
    remove_ip(array).tally.sort_by{ |page,views| views }.reverse
  end

  def analyse_unique_views
    array = map_data(@data).uniq
    remove_ip(array).tally.sort_by{ |page,views| views }.reverse
  end

end
