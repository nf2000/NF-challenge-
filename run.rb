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
  
    return "#{names.join(",")}"
end

def names_list_alphabetical(names)
  # returns a string with each name in 'names' with a comma between them in alphabetical order
  sortedarray = names.sort
  return "#{sortedarray.join(",")}"   
end


def random_name(names)
  # returns one of the names at random
  randomno = rand(names.count)  # generating and storing random number
  return randomname = names[randomno] # returing the name at that random generated index

end

def random_team_split(names)
  
  count = 0 
  newarray = [[],[]]

  8.times do |iterator|
    randomname = names.sample # sample takes random elemnet from array 
    newarray[0] << (randomname)
    names.delete(randomname)
  end
   
  names.each do |element|
    newarray[1] << element
  end

  return newarray

end

=begin
puts " ------ Name List ---- "
puts " \n" + "#{names_list(NAMES)}"
puts " \n" + "----- Alphabetically sorted -----"
puts " \n" +"#{names_list_alphabetical(NAMES)}"
puts " \n" + " ------ Random name ------"
puts " \n" + "#{random_name(NAMES)}"
puts "\n" + "------------ Team split ---------------"
puts "\n" + "#{random_team_split(NAMES)}"
=end

