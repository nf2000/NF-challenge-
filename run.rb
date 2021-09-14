NAMES = [
  'Will',
  'Jess',
  'Suzy',
  'Caroline',
  'Manish',
  'Natalie',
  'Maicon',
  'Jason',
  'Anderson',
  'Nimra',
  'Alex',
  'Anna',
  'Serge',
  'Konrad',
  'Robert',
  'Frodo'
]

def names_array(names)
  return names
end

def names_list(names)
  # returns a string with each name in 'names' with a comma between them
  #names.each do |x|
    #puts "#{x} , "
    return "#{names.join(",")}"
 #ß end

end

def names_list_alphabetical(names)
  # returns a string with each name in 'names' with a comma between them in alphabetical order
  sortedarray = names.sort
  return "#{sortedarray.join(",")}"
=begin
  sortedarray.each do |x|
    puts "#{x} , "
=end
    
end

def random_name(names)
  # returns one of the names at random

  randomno = rand(names.count)  # generating and storing random number
  return randomname = names[randomno] # returing the name at that random generated index

end



def random_team_split(names)
  
  count = 0 
  teamsarray = []
  newarray = [[],[]]
  while count < names.count
    randomname = names.shuffle.first # suffles the array and outputs one element 
    teamsarray.append(randomname)
    names.delete(randomname)

    count += 1
  end
  #newarray.append(teamsarray,names)
   newarray[0] << teamsarray
   newarray[1] << names
=begin
   2.times do |iterator|
    puts "#{newarray[iterator]}"
   end
=end
return newarray


end
array = names_array(NAMES)
puts " ------ Name List ---- "
puts " \n" + "#{names_list(NAMES)}"
puts " \n" + "----- Alphabetically sorted -----"
puts " \n" +"#{names_list_alphabetical(NAMES)}"
puts " \n" + " ------ Random name ------"
puts " \n" + "#{random_name(NAMES)}"
puts "\n" + "------------ Team split ---------------"
puts "\n" + "#{random_team_split(NAMES)}"


