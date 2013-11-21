
include Comparable
include Enumerable

describe My::Matriz do 

  before :each do
@M1=My::MatrizDispersa.new(2,2)
@M1[0]=[3,8]
@M1[1]=[0,0]
@M2=My::MatrizDispersa.new(2,2)
@M2[0]=[3,6]
@M2[1]=[0,0]
@M1.convertir_dispersa
@M2.convertir_dispersa

      
  end
  describe "Operaciones matrices densas" do
    it "SUMA" do
      @M3=My::Matriz(2,2)
      @M3[0]=[6,14]
      @M3[1]=[0,0]
      (@M1+@M2)==@M3
    end
    it " LA RESTA " do
      @M4=My::Matriz(2,2)
      @M4[0]=[0,2]
      @M4[1]=[0,0]
      (@M1-@M2)==@M4
    end
  end
  

end
# 
# be My::MatrizDispersa do
# before :each do
#     @M4 = MatrizDispersa.new(2,2)
#       @M4[0]= [0,0]
#       @M4[1]= [0,1]
#   end
#   describe " DISPERSA " do
#     it " DISPERSA " do
#       
#     end
#   end
