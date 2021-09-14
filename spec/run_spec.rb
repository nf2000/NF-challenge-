require_relative './spec_helper.rb'
require_relative '../run.rb'

describe 'Names Challenge' do
  context '#names_array' do
    it 'returns a string with each name in "names" with a comma between them' do
      expect(names_array(NAMES)).to eq(NAMES)
    end
  end

  context '#names_list' do
    it 'returns a string with each name in "names" with a comma between them' do 
      expect(names_list(NAMES)).to eq(NAMES.join(","))
    end
  end

  context '#names_list_alphabetical' do
    it 'returns a string with each name in "names" alphabetically' do 
      expect(names_list_alphabetical(NAMES)).to eq(NAMES.sort.join(","))
    end
  end

  context '#random_name' do
    it 'returns one of the names at random' do 
      
      NAMES.each do |x|
        if random_name(NAMES) == x
          break
          expect(random_name(NAMES)).to eq(x)
        end
      end
  
    end

  end
  context '#random_team_split' do
  it 'returns a multidimensional array - one array that contains two arrays in this case.' do 
    
    r_split = random_team_split(NAMES)
    #needs to be 2 arrays in an array 
    puts "#{r_split[0] && r_split[1]}"
      expect(random_team_split(NAMES)).to be_an(Array)
      expect(r_split.length()).to eq(2) # checks if the length of the array is 2 

      
      # run 2 times to see if the element is an array and the length of each array is 8
      2.times do |iterator|
        expect(r_split[iterator]).to be_an(Array)
        puts r_split[iterator]
        expect(r_split[iterator].length()).to eq(8)
      end
        #expect that both arrays within multi_d_array are random
       flat_array = r_split.flatten
       expect(flat_array).not_to eq(NAMES)
       expect(r_split[0]).not_to eq(r_split[1])
    end
  end

end

