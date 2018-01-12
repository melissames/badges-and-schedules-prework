def badge_maker (name)
  "Hello, my name is #{name}."
end

def batch_badge_creator (namesArray)
  batched_badges = []

  namesArray.each { |name|
    batched_badges << badge_maker(name)
  }
  batched_badges
end

def assign_rooms (speakers)
  rooms_with_speakers = []

  speakers.each_with_index { |speaker, index|
    rooms_with_speakers << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  }
  rooms_with_speakers
end

def printer(attendees)
  batched_badges = batch_badge_creator(attendees)
  assign_rooms = assign_rooms(attendees)

  batched_badges.each { |badge|
    puts badge
  }
  assign_rooms.each { |room_assignments|
    puts room_assignments
  }
end
