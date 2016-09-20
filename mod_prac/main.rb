require_relative 'printer_module'
class Array
  include Printer
end
class String
  include Printer
end

[1,2,3].print_each_element
# this is a array (Array class)
# includes Printer from printer_module
"hello".print_each_element
# this is a string (String class)
# includes Printer from printer_module
