# Smart Pension Tech Test

Tech Test for Smart Pension written using Ruby 2.7 and TDD by Bertie Wooles

## User Guide
The App uses a command line interface.

Before running this tech test please make sure you have Ruby 2.7 installed as this sollution makes use of the `Enumerable#Tally` method introduced in this Ruby.

To run, simply navigate to the top level directory of the test and run `ruby lib/parser.rb webserver.log` or any other file you wish to analyse.

To run the tests either `bundle` or simply `gem install rspec` as it is the only gem used in this solution. Then just type `rspec` in the same top level directory as you ran the parser.

## Notes
My first solution attempted to use a structure such as `ruby -r "./lib/parser.rb" -e "Parser.new("webserver.log")"`. I tried this approch as it would have allowed parser to be a class and essentially function as Analyser does in this solution, but this method didn't work with the filename throwing errors and so I moved to my current solution.

The solution as written only works with files in this specific format. The solution could be extended to modifiy any file into a useable format i.e JSON and to also fetch files from the web. 
