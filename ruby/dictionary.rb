def dictionary
  lambda {|x| nil}
end

def add(key, value, dictionary)
  lambda do |x|
    key == x ? value : dictionary.call(x)
  end
end

d = dictionary
d = add("a",5, d)
d = add("b",6, d)

p d.call("b")
p d.call("a")
p d.call("c")
