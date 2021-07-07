# your code goes here
def begins_with_r(arr)
  arr.each do |element|
    if element.start_with?("r")
    else
      return false
    end
  end
  return true
end

def contain_a(arr)
  nu_arr = []
  arr.collect do |element|
    if element.include?("a")
      nu_arr << element
end
end
nu_arr
end

def first_wa(arr)
  arr.each do |element|
    return element if element.to_s.start_with?("wa")
  end
end

def remove_non_strings(arr)
  arr.delete_if do |string|
    !string.is_a?(String)
  end
end

def count_elements(arr)
  count_hash = {}
  arr.each do |element|
    if count_hash[ element[:name] ]
        count_hash[element[:name]] += 1
    else
      count_hash[element[:name]] = 1
    end
  end
  count_hash.map {|name, count| {:name => name, :count => count}}
end


def merge_data(keys, data)
  nu_array = []
   keys.each do |person|
    name = person[:first_name]
    attributes = data[0][name]
    nu_array << person.merge(attributes)
   end
   nu_array
end


def find_cool(cool)
array = []
  cool.each do |element|
    if element[:temperature] == "cool"
      array << element
    end
  end
  return array
end

def organize_schools(schools)
  hash = {}
  schools.each do |school_name, location_hash|
  location = location_hash[:location]
  if hash[location]
    hash[location] << school_name
  else
    hash[location] = [school_name]
  end
end
return hash
end
