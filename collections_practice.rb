# your code goes here
def begins_with_r(array)
  array.each do |a|
   if !a.start_with?("r")
     return false
  end
end
true
end

def contain_a(array)
  b = []
  array.each do |a|
   if a.include?("a")
     b.push(a)
    end
  end
  return b
end

def first_wa(array)
  array.each do |a|
    if a.to_s.start_with?("wa")
      return a
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|a| a.class != String}
  array
end

def count_elements(array)
  hash = Hash.new(0)
  array.collect do |a|
    hash[a] +=1
  end
    hash.collect do |b,c|
      b[:count] = c
    end
    hash.keys
end

def merge_data(keys,data)
  keys.each do |a|
    data.each do |b|
      a.merge!(b[a[:first_name]])
    end
  end
end

def find_cool(array)
  array.select do |a|
    if a.has_value?("cool")
      a
    end
  end
end

def organize_schools(array)
  location = {}
  array.each do |a,b|
    b.each do |c,d|
      if location.has_key?(d)
      location[d] << a
      else
      location[d] = [a]
    end
    end
  end
  location
end