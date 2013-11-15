class Matrix

attr_accessor :matriz

private_class_method :new

  def initialize (a)
    if a.class == String
      @matriz = to_m(a)
      @m = @matriz.size()
      @n = @matriz[0].size()
    else
      @matriz = a
      @m = @matriz.size()
      @n = @matriz[0].size()
    end
  end

  def self.nuevo(a)
    z = new(a)
  end


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

  def +(other)
    c = Array.new(@m) { Array.new(@n) }
    for i in 0...@m do                        #iteramos de nuevo sobre las filas
      for j in 0...@n do
        c[i][j] = other[i,j] + @matriz[i][j]
      end
    end
    Matrix.nuevo(c)
  end

  def *(other)
    c = Array.new(@m) { Array.new(@n) }
    for i in 0...@m do                        #iteramos de nuevo sobre las filas
      for j in 0...@n do                      #por cada fila, se iteran columnas
        for k in 0...@m do                    #por cada fila, se iteran columnas
          c[i][j] = 0
          x = (other[k,j] * @matriz[i][k])
          c[i][j] = c[i][j] + x
        end
      end
    end
    Matrix.nuevo(c)
  end


  def to_m (a)
    a = a.split(/\n/)
    a = a.map { |r| r.split(/\s+/) }
    a = mapmap(a) { |x| x.to_i } 
  end

  def show
  	@matriz.inspect
  end


end


if __FILE__ == $0
	m1 = Matriz.nuevo("1 2\n3 4")
end
