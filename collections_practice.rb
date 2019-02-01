require "pry"

def begins_with_r(array)
  !(array.any? {|i| i[0] != "r"})
end

def contain_a(array)
  array.select {|i| i.include?("a")}
end

def first_wa(array)
  array.find {|i| i[0] == "w" and i[1] == "a"}
end

def remove_non_strings(array)
  array.select {|i| i.is_a? String}
end

def count_elements(array)
  names = array.collect do |hash|
    hash[:name]
  end
  new_array = []
  included_names = []
  names.each do |name|
    if included_names.include?(name)
      new_array.each do |hash|
        if hash[:name] == name
          hash[:count] += 1
        end
      end
    else
      new_array << {name: name, count: 1}
      included_names << name
    end
  end
  new_array
end

def merge_data(array1, array2)
  merged_hash = array2[0]
  array1.each do |hash1|
    merged_hash[hash1[:first_name]].merge!(hash1)
  end
  (merged_hash.flatten).delete_if {|el| el.is_a? String}
end

def find_cool(array)
  array.select do |hash|
    if hash[:temperature] == "cool"
      hash
    end
  end
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school, loc_hash|
<<<<<<< HEAD
    if new_hash.keys.include?(loc_hash[:location])
      new_hash[loc_hash[:location]] << school
    else
      new_hash[loc_hash[:location]] = [school]
    end
  end
  new_hash
=======
    new_hash[loc_hash[:location]] = school
  end
  binding.pry
>>>>>>> 3b8e3335fedba70e53442b0b56761f4cc0bc73f5
end
