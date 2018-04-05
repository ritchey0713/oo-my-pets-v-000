class Owner
  @@owners = []
  
  attr_accessor :name
  
  def self.all 
    @@owners 
  end 
  
  def initialize(name)
    @name = name 
    @@owners << self
    @species = "human"
    @pets={:fishes => [], :dogs=>[], :cats=>[]}
  end 
  
  def self.reset_all 
     @@owners.clear 
  end 
  
  def self.count 
    @@owners.length
  end 
  
  def species 
    @species
  end 
  
  def say_species 
    "I am a #{@species}."
  end 
  
  def pets 
    @pets
    
  end 
  
  def buy_fish(name)
   name = Fish.new(name) 
   @pets[:fishes] << name
  end
  
    def buy_dog(name)
   name = Dog.new(name) 
   @pets[:dogs] << name
  end
  
    def buy_cat(name)
   name = Cat.new(name) 
   @pets[:cats] << name
  end
  
  def walk_dogs
    @mood = "happy"
  end
  
  def play_with_cats
    @mood = "happy"
  end
  
  def feed_fish 
    @mood = "happy"
  end 
  
  def list_pets
end
  
  
end