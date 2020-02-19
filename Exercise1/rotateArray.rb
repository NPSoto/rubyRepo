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