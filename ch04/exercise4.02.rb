#   AUTHOR      : Robert James Patterson
#   DATE        : 11/29/2020
#   FILE        : exercise4.02.rb
#   SYNOPSIS    : using methods in Ruby.

# In this exercise, we will write a method that emulates an API client that can take any number 
# of parameters. Additionally, we will call the method using the single splat operator.
#
# A common idiom is to assemble arguments in this way if there are conditions determining which 
# arguments to pass to the method. Let's take a look at an example using an API client that makes 
# a web request. The web request method can take any number of arguments:

# First, we need to create a method that implements a method called get_data and takes the url, 
# headers, and params variables, which use the splat operator.
def get_data(url, headers = {}, *params)
    
    puts "Calling #{url}"
    
    if headers.length > 0
        puts "Headers: #{headers}"
    else
        puts "No headers"
    end
    
    params.each do |param|
        puts "Found param: #{param}"
    end

end

# Next , we write a method that assembles parameters into an array.
def assemble_params(include_headers=false, include_date_in_search=false, only_show_my_record=true)
    
    headers = {accept: "application/json"}
    url = "https://exampleapi.com"
    args = [url]
    args << headers if include_headers
    params = []
    params << "date=#{Time.now}" if include_date_in_search
    params << "myrecords=true" if only_show_my_record
    args << params if params.length > 0

end

#main
puts  "============================================================================="
get_data(*assemble_params)
puts  "============================================================================="
get_data(*assemble_params(true))
puts  "============================================================================="
get_data(*assemble_params(false, true, false))
puts  "============================================================================="
