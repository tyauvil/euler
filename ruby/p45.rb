#Porject EUler
#problem 45
#Triangle, pentagonal, and hexagonal numbers are generated by the following formulae:
#
# Triangle	 	Tn=n(n+1)/2	 	1, 3, 6, 10, 15, ...
# Pentagonal	 	Pn=n(3n1)/2	 	1, 5, 12, 22, 35, ...
# Hexagonal	 	Hn=n(2n1)	 	1, 6, 15, 28, 45, ...
# It can be verified that T285 = P165 = H143 = 40755.
#
# Find the next triangle number that is also pentagonal and hexagonal.

def tri(n)
  (n * (n + 1)) / 2
end

def pent(n)
  (n * (3 * n - 1)) / 2
end

def hex(n)
  n * (2 * n - 1)
end

tri_list = []
pent_list = []
hex_list = []
p = 100000

50000.upto(p) do |x|
  tri_list << tri(x)
end

30000.upto(p / 2) do |x|
  pent_list << pent(x)
end

20000.upto(p / 2) do |x|
  hex_list << hex(x)
end

tri_list.each do |x|
  if hex_list.include?(x) and pent_list.include?(x)
    puts "A WINNNER IS YOU?!"
    puts x
  end
end
