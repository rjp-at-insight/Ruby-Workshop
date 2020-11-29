#   AUTHOR      : Robert James Patterson
#   DATE        : 11/29/2020
#   FILE        : dbl-splatops.rb
#   SYNOPSIS    : using methods in Ruby.

# The double splat operator arrived with Ruby 2.0 and pairs with its keyword arguments. Whereas 
# the single splat operator can be used for splatting positional arguments into a single argument, 
# the double splat operator is used for splatting keyword arguments into a single argument.

def log_msg(message: , time: Time.now)
    return "[#{time}, #{message}]"
end

#main
log_msg(message: "This is the message to log.")