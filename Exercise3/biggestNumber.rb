def biggestNumber (a)
  max=0
  p = a.permutation.to_a
  p.each do |x|
    aux = x.join.to_i
      if aux > max
      max = aux.to_i
      end
  end
  puts(max)
  return
end