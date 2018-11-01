# Sluggish Octopus
# Find the longest fish in O(n^2) time.
# Do this by comparing all fish lengths to all other fish lengths

fish_food = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fishies)
  longest_fish = ""
  (0..fishies.length -1).each do |one_fish|
    (one_fish + 1..fishies.length - 1).each do |two_fish|
      if fishies[one_fish].length > fishies[two_fish].length
        longest_fish = fishies[one_fish]
      else
        longest_fish = fishies[two_fish]
      end
    end
  end
  longest_fish
end

def clever_octopus(fishies)
  longest_fish = ""
  fishies.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
  longest_fish
end
