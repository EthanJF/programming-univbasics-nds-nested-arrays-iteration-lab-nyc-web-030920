def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  row_index = 0
  resulting_array = []
  while row_index < src.length do
    resulting_array << "I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
    row_index += 1
  end
  resulting_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  i = 0
  result = []
  
  while i < src.length do
    if src[i][0] > src[i][1]
      result << src[i][0]
    else
      result << src[i][1]
    end
    i += 1
  end
  result
    
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  result = []
  i = 0
  
  while i < src.length do
    if src[i][0] % 2 === 0 && src[i][1] === 0
      result << src[i][0]
      result << src[i][1]
    end
    result
end
