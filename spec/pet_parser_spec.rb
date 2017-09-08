# require File.expand_path '../spec_helper.rb', __FILE__
require './pet_parser'
require './pet'
puts __FILE__
describe "Pet Parser" do
  it "should convert a json to a Pet object" do
    pet = PetParser.from_json('{"id": 0 ,"name": "doggie"}')
    pet_obj = Pet.new({'id'=> 0, 'name'=> 'doggie'})
    expect(pet).to eq(pet_obj)
  end

  it 'should equal specific pet with name doggie' do
    pet = PetParser.from_json('{"id": 0 ,"name": "doggie"}')

    expect(pet).to eq(Pet.new({'id'=> 0, 'name'=> 'doggie'}))
  end

  it "should convert Pet object to json" do
    pet = PetParser.to_json(Pet.new({'id'=> 0, 'name'=> 'puppie'}))
    expect(pet).to eq('{"id":0,"name":"puppie"}')

  end
end
