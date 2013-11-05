class Matrix

attr_accessor :matriz

 def mapmap(a)
    a.map { |r| 
      r.map { |e| 
        yield e
      }
    }
  end


  def []=(i, j, x)
   @matriz[i][j] = x
  end

  def [](i, j)
   @matriz[i][j]
  end


  def to_m (a)
    a = a.split(/\n/)
    a = a.map { |r| r.split(/\s+/) }
    a = mapmap(a) { |x| x.to_i } 
  end

  def show
  	puts @matriz.inspect
    puts @m
    puts @n
  end
  
  def initialize (a)
    @matriz = to_m(a)
    @m = @matriz.size()
    @n = @matriz[0].size()
  end

end


if __FILE__ == $0
	m1 = Matriz.new("1 2\n3 4")
end
