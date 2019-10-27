def each_with_object(array, obj)
  array.each do |element|
    yield(element, obj)
  end
  obj
end
