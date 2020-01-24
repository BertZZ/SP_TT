class Analyser

  attr_reader :data

  def initialize(file)
    @data = file.read
  end

  def remove_ip(data)
    array = data.split("\n").map
    pages = array.each {|page| page.split[0]}
  end

  def analyse_page_views
    remove_ip(@data).tally
  end
end
