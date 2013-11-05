require 'matrix_main.rb'
require 'rspec'

describe Matrix do

  before :each do
    @matrix1 = Matrix.new("9 3 2\n4 6 7")
    @matrix2 = Matrix.new("3 5 7\n8 9 3")
  end

  it "La matriz se muestra correctamente" do
    @matrix1.show.should eq("[[9, 3, 2], [4, 6, 7]]")
  end

  it "Comprobando el acceso de un dato de la matriz mediante indice" do
    @matrix1[0,0].should == 9
  end

  

end