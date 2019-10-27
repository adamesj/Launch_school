# Write a minitest that will fail if the value.add? is not true.
assert(value.odd?), 'value is not odd'
# assert_equal true, value.odd? works as well. assert_equal will test if your method returns true.

# Write a minitest assertion that will fail is value.downcase does not return 'xyz'
assert_equal(value.downcase, 'xyz')

# Write a minitest assertion that will fail if value is not nil.
assert_nil(value)

# Write a minitest assertion that will fail if the Array list is not empty.
assert_empty(list)

# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.
assert_includes(list, 'xyz')

# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.
assert_raises(NoExperienceError) do
  employee.hire
end

# Write a minitest assertion that will fail if value is not an instance of the Numeric class exactly. 
# value may not be an instance of one of Numeric's superclasses.
assert_instance_of(Fixnum, value)

# Write a minitest assertion that will fail if the class of value is not Numeric or one of Numeric's subclasses (e.g., Integer, Float, etc).
assert_kind_of(Fixnum, value)

# Write a test that will fail if list and the return value of list.process are different objects.
assert_same(list, list.process)

# Write a test that will fail if 'xyz' is one of the elements in the Array list:
refute_includes(list, 'xyz')

# Write a minitest assertion that will fail if the Array list is not empty.
assert_empty(list)