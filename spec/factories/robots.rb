FactoryBot.define do
  factory :robot do
    name 'Bob'
    serial { SecureRandom.hex }
    friendly true

    inventor 
  end
end

# Creates and Saves
  # FactoryBot.create(:robot)
  # FactoryBot.create(:robot, friendly: false)
  # FactoryBot.create(:robot, friendly: false, name: 'Steve')

# Creates an instance but not saves
  # FactoryBot.build(:robot)

# List out all the attributes a robot has in a key, value pair
  # FactoryBot.attributes_for(:robot)

# creates a default factory for a given model
  # FactoryBot.build_stubbed(:robot)

  # FactoryBot.create(:robot) do |robot|
  # robot.parts(attributes_for(:parts))
  # end

# Lazy Attributes
  # name { Robot.generate_name }

# Dependent Attributes
  # email { '#{first_name}@email.com'}

# Sequencing
  # sequence :email do |n|
    # "inventor#{n}@email.com"
  # end

# Multiple Robots
  # build_list(:robot, 100)
  # create_list(:robot, 100)
  
# before(:build)
# after(:build)
# before(:create)
# after(:create)
# before(:stub)
# after(:stub)