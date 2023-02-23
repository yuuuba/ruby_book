def ruby(x,y,z)
  return x * y * z
end

p ruby(4,5,10)

def area(x,y,z)
  xy = x*y
  yz = y*z
  zx = z*x
  return (xy+yz+zx)*2
end

p area(3,5,2)
p area(50,20,30)

a = 3
if a>= 20
  puts "20以上です"
elsif a>=10
  puts "10以上です"
else
  puts "条件を満たさない数値です"
end

i = 1
while i >= 10 do
  print i,"\n"
  i = i + 1
end