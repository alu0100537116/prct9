require "./lib/matrix_expansion.rb"
include Comparable
include Enumerable

describe MatrixExpansion::Matriz do 

  before :each do
      @M1=MatrixExpansion::MatrizDispersa.new(2,2)
      @M1[0]=[3,0]
      @M1[1]=[0,0]
      @M1.cv
      @M2=MatrixExpansion::MatrizDispersa.new(2,2)
      @M2[0]=[3,0]
      @M2[1]=[0,0]
      @M2.cv
      @Ma=MatrixExpansion::MatrizDensa.new(2,2)
      @Ma[0]=[2,2]
      @Ma[1]=[0,2]
      @Mb=MatrixExpansion::MatrizDensa.new(2,2)
      @Mb[0]=[2,2]
      @Mb[1]=[0,2]
          
    end
    
    
  describe "OPERACIONES MATRICES DISPERSAS" do
      it "SUMA DISPERSAS" do
	  @M3=MatrixExpansion::MatrizDispersa.new(2,2)
	  @M3[0]=[6,0]
	  @M3[1]=[0,0]
	  (@M3==(@M1+@M2)).should eq(true)
      end
      it "RESTA DISPERSAS" do
	  @M4=MatrixExpansion::MatrizDispersa.new(2,2)
	  @M4[0]=[0,0]
	  @M4[1]=[0,0]
	  (@M4==(@M1-@M2)).should eq(true)
      end	
      it " MULTIPLICACION DISPERSAS" do
	  @M5=MatrixExpansion::MatrizDispersa.new(2,2)
	  @M5[0]=[9,0]
	  @M5[1]=[0,0]
	  (@M5==(@M1*@M2)).should eq(true)
      end
      it " MAXIMO DISPERSAS" do
	  @M1.max.should eq(3)
      end
      it " MINIMO DISPERSAS" do
	  @M1.min.should eq(3)
      end
   end
   
####################################### PRUEBAS PARA MATRICES DENSAS #########################################
   
   describe "OPERACIONES MATRICES DENSAS" do
      it " SUMA DENSAS" do
	@M3=MatrixExpansion::MatrizDensa.new(2,2)
	@M3[0]=[4,4]
	@M3[1]=[0,4]
	(@M3==(@Ma+@Mb)).should eq(true)
      end
      it " RESTA DENSAS" do
	@M4=MatrixExpansion::MatrizDensa.new(2,2)
	@M4[0]=[0,0]
	@M4[1]=[0,0]
	(@M4==(@Ma-@Mb)).should eq(true)
      end
      it" MULTIPLICACION DENSAS"do
	@M5=MatrixExpansion::MatrizDensa.new(2,2)
	@M5[0]=[4,8]
	@M5[1]=[0,4]
	(@M5==(@Ma*@Mb)).should eq(true)
      end
      it "MAXIMO DENSAS" do
	@Ma.max.should eq(2)
      end
      it "MINIMO DENSAS" do
	@Ma.min.should eq(0)
      end
   end
   
##################################### PRUEBAS PARA MATRICES DENSAS Y DISPERSAS ################################
   describe"OPERACIONES MATRICES DENSAS Y DISPERSAS" do
     it " SUMA DENSA+DISPERSA" do
       @Mx=MatrixExpansion::Matriz.new(2,2)
       @Mx[0]=[5,2]
       @Mx[1]=[0,2]
       (@Mx==(@Ma+@M1)).should eq(true)
     end
   end
   
end

