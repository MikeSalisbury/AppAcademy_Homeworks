fish_array = [
  'fish',
  'fiiish',
  'fiiiiish',
  'fiiiish',
  'fffish',
  'ffiiiiisshh',
  'fsh',
  'fiiiissshhhhhh']

def sluggish_octopus(arr)
  result = arr[0]
  arr[0...-1].each_with_index do |fish1, idx|
    arr[idx + 1..-1].each do |fish2|
      if fish2.length > fish1.length
        result = fish2
      else
        result = fish1
      end
    end
  end

  result
end

def dominant_octopus(arr)
  merge_sort(arr).last
end

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])

  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?

    case left[0].length <=> right[0].length
    when -1
      result << left.shift
    when 0
      result << right.shift
      result << left.shift
    when 1
      result << right.shift
    end
  end

  result + left + right
end

def clever_octopus(arr)
  biggest_fish = arr[0]
  arr.each do |fish|
    if fish.length > biggest_fish.length
      biggest_fish = fish
    end
  end

  biggest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_tiles_data_structure = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6, "left-up"=>7}
def slow_dance(string, arr)
  arr.each_with_index do |direction, idx|
    return idx if string == direction
  end

  nil
end

def fast_dance(string, hash)
  hash[string]
end

p sluggish_octopus(fish_array) == 'fiiiissshhhhhh'
p dominant_octopus(fish_array) == 'fiiiissshhhhhh'
p clever_octopus(fish_array) == 'fiiiissshhhhhh'
p slow_dance("up", tiles_array) == 0
p slow_dance("right-down", tiles_array) == 3
p fast_dance("up", new_tiles_data_structure) == 0
p fast_dance("right-down", new_tiles_data_structure) == 3
