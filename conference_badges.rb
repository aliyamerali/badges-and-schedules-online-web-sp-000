# Write your code here.

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.collect{ |name| "Hello, my name is #{name}." }
end

def assign_rooms(names)
  names.each_with_index.map do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(names)
  badges = batch_badge_creator(names)
  rooms = assign_rooms(names)
  names.each_with_index do |name, index|
    puts badges[index]
    puts rooms[index]
  end
end

names = ["aliya", "tanner", "futuredoggo"]
printer(names)
