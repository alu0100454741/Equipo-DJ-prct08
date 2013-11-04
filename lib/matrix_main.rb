class Matrix

  # include Comparable

  #Método de inicialización de la Clase Matrix
  def initialize (mat)
  	@matrix = to_m (mat)
  end


  def to_m (mat)
    mat = mat.split(',')
    mat = mat.map { |r| r.split(/\s+/) }
    mat = mat.each { |x| x.each { |y| y.to_i}}
  end


end

if __FILE__ == $0
 
end
