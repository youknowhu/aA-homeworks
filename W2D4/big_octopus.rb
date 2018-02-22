def sluggish_octopus(fish_arr)
  longest_fish = ''

  fish_arr.each do |fish1|
    fish_arr.each do |fish2|

      if fish1.length > fish2.length && fish1.length > longest_fish.length
        longest_fish = fish1
      end
    end
  end

  longest_fish
end

def dominant_octopus(fish_arr)
  prc = Proc.new { |x, y| y.length <=> x.length }
  fish_arr.merge_sort(&prc).first
end

def clever_octopus(fish_arr)
  longest_fish = ''

  fish_arr.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
end

def slow_dance(dir, tiles_arr)
  tiles_arr.each_with_index do |tile, idx|
    return idx if tile == dir
  end
  nil
end

def fast_dance(direction, tiles_hash)
  tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

tiles_hash[direction]
end

class Array
  #this should look familiar
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1
    mid = count / 2
    left, right = self[0...mid], self[mid..-1]
    sorted_left = left.merge_sort(&prc)
    sorted_right = right.merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)

  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == -1
        merged << left.shift
      else
        merged << right.shift
      end
    end

    merged + left + right
  end
end
