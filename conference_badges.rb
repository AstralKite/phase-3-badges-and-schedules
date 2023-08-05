# Write your code here.
def badge_maker(name)
    sentence = "Hello, my name is #{name}."
    #puts(sentence)
    return sentence
end


def batch_badge_creator(names)
    messages = [];

    messages = names.map do |name|
        badge_maker(name)
    end
    messages
end

def assign_rooms(speakers)
    assignment = [];

    assignment = speakers.each_with_index.map do |speaker, index|
        "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
    end

    assignment
end

def printer(names)
    greeting = batch_badge_creator(names)

    rooms = assign_rooms(names)

    greeting.map do |guest|
        puts guest
    end

    rooms.map do |speak|
        puts speak
    end
end