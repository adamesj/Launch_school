# Given a hash of family members, with keys as the title and an array of names as the values,
# use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
immediate_family_names = []
immediate_family = family.select { |k, v| k == :sisters || k == :brothers }

immediate_family.each do |k, v|
  immediate_family_names << v
end

immediate_family_names.flatten!

p immediate_family_names