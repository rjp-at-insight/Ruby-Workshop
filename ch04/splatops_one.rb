#   AUTHOR      : Robert James Patterson
#   DATE        : 10/34/2020
#   FILE        : comparing.rb
#   SYNOPSIS    : Work thru files for 'The Ruby Workbook'.
#

def method_with_any_number_of_args(*args)
    puts args.class 
    puts args        
end

#main
args = []
args << 5
args << "asdf"
args << [1,2,3]
method_with_any_number_of_args(*args)