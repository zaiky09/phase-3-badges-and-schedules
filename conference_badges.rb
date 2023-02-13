# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
  end
  
  def batch_badge_creator(names)
    names.map do |name|
      badge_maker(name)
    end
  end
  
  def assign_rooms(names)
    names.each_with_index.map do |name, index|
      "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
  end
  
  def printer(names)
    batch_badge_messages = batch_badge_creator(names)
    room_assignments = assign_rooms(names)
    batch_badge_messages.each do |message|
      puts message
    end
    room_assignments.each do |assignment|
      puts assignment
    end
  end

