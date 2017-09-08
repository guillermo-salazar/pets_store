class Pet
  attr_accessor :id, :name
  def initialize(args)
    raise ArgumentError.new('No ID') if args['id'].nil?
    raise ArgumentError.new('No Name') if args['name'].nil?
    @name = args['name']
    @id   = args['id']
  end
  def == second_pet
    @id == second_pet.id
  end
end
