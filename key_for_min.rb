# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    nil
  else
    lowest_value = 100
    name_hash.each do |key, value|
      if value < lowest_value
        lowest_value = value
      end
    end
    lowest_key = name_hash.collect do |key, value|
      if value == lowest_value
        return key
      end
    end
  end
  lowest_key
end
