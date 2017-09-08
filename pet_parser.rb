require './pet'
require 'json'
class PetParser
  def self.from_json json
    Pet.new(JSON.parse json)
  end
  def self.to_json pet
    {
      'id': pet.id,
      'name': pet.name
    }.to_json
  end
end
