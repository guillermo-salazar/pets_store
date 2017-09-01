require './pet'
require 'json'
class PetParser
  # @pets = "[{'id':0,'category':{'id':0,'name':'string'},'name':'dog','photoUrls':['string'],'tags':[{'id':0,'name':'string'}],'status':'available'},{'id':1,'category':{'id':0,'name':'string'},'name':'doggie','photoUrls':['string'],'tags':[{'id':0,'name':'string'}],'status':'available'}]"
  # pet = [{'id': 0, 'name': 'dog'},{'id': 1, 'name': 'cat'}]
  def self.from_json json
    Pet.new(JSON.parse json)
  end
  def self.to_json pet

  end
end
