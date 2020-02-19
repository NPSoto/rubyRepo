
def rotateArray (array, jumps)
  result = Array.new(array.length)
  n = array.length
  ##puts("Largo del arreglo dado: #{n}")
  array.each_with_index {
    |val, index|
    newIndex=getJumpedIndex(index, jumps, n)
    ##puts("Nuevo indice para #{index} es #{newIndex}")
    result[newIndex]=val
  }
  return result
end

def getJumpedIndex (index, jumps, length)
  if jumps>index
    return length-(jumps-index)
  elsif index >= jumps
    return index-jumps
  end
end

ar = Array.new([1,2,3,4,5,6,7,8,9,10])
rotateArray(ar, 5)