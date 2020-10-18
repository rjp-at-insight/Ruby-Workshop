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