def fibonacci(n)
  n0= 0
  n1= 1
  if n==0
    puts(n0)
    return
  end
  if n==1
    puts(n1)
    return
  end
  ar = Array.new(2)
  ar[0]=n0
  ar[1]=n1
  ##puts("El array inicializado es #{ar} ")
  x=2
  while n >= x do
    newTerm = ar[ar.length-1]+ar[ar.length-2]
    ar[x]= newTerm
    ##puts("El último elemento en el índice #{x} es #{ar[x]}")
    x = x+1
  end
  puts("Fibonacci ( #{n} ) = #{ar.last}")
  return
end