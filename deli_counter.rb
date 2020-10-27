# Write your code here.

=begin
katz_deli = []

  take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
  take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
  take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

  line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

  now_serving(katz_deli) #=> "Currently serving Ada."

  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

  take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

  now_serving(katz_deli) #=> "Currently serving Grace."

  line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz" 
=end

def line(deli)
    len = deli.length
    if len == 0
        puts "The line is currently empty."
    else
        s = "The line is currently:"
        count = 1
        while count <= len
            s << " " << count.to_s << ". " << deli[count-1]
            count += 1
        end
        puts s
    end
end

def now_serving(deli)
    if deli.length == 0 
        puts "There is nobody waiting to be served!" 
    else 
        puts "Currently serving " << deli.shift << "."
    end
end

def take_a_number(deli, name)
    #l = deli.length + 1
    puts "Welcome, #{name}. You are number #{deli.length + 1} in line."
    deli << name
end

