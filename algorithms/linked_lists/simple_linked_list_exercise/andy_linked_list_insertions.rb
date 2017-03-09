
class Element
	attr_accessor :datum, :next

	def initialize(datum)
		@datum = datum
		@next = nil
	end
end



listB = Element.new(1)
listB.next = Element.new(2)
listB.next.next = Element.new(5)

listA = Element.new(3)


# Insert at index, assume index is less than length
def insert_at_index(index, list, element)
  previous = nil
  current = list
  count = 0
  if index > 0
    while count < index  && list
      count +=1
      current
      previous = current
      previous
      current = previous.next
    end
    previous.next = element
    element.next = current
    list
  else
    element.next = current
    element
  end

end

# insert_at_index(1, listB, listA)
insert_at_index(0, listB, listA)


# Insert at value,
def insert_at_value(value, list, element)
  current = list
  if value != list.datum
    while current && current.datum != value
      previous = current
      current = previous.next
    end
    previous.next = element
    element.next = current
    list
  else
    element.next = list
    element
  end
end

p insert_at_value(1, listB, listA)
