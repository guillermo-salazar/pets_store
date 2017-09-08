# it 'compares two equal pets' do
#   expect(Pet.new(name: 'doggie', id: 'do you matter')).to eq(Pet.new(name: 'doggie'))
#
# end

require './pet'
describe 'Pet creation' do
  it 'should require a name' do
    expect { Pet.new({'id'=> 0})}.to raise_error("No Name")
  end
  it 'should require an id' do
    expect { Pet.new({'name'=> 'doggie'})}.to raise_error("No ID")
  end
end
describe 'Pet compares' do
  it 'same objects should equal' do
    pet_data = { 'id' => 0, 'name'=> 'doggie'}
    # pet_dog = Pet.new({ 'id' => 0, 'name' => 'doggie' })
    # pet_cat = Pet.new({ 'name' => 'doggie', 'id' => 1})
    pet = Pet.new(pet_data)
    same_pet = Pet.new(pet_data)
    expect(pet).to eq(same_pet)
  end
end
