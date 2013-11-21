require '/home/alu4101/datos/homes.rala/LPP/prct9/lib/matrices.rb'
module My
class MatrizDensa<Matriz
	
  attr_accessor :fil, :col, :valor
	
	
############################ INITIALIZE ##################################
	
    def initialize(m,n)
	super
    end
    
############################ METODO [] #################################
    
    def [](i)
      @valor[i]
    end
    
########################## METODO [] ################################
    
    def []=(i,other)
      @valor[i] = other
    end
    
##################### METODO REPRESENTAR UNA CADENA ####################
    
    def to_s
      i=0
      cadena= ""
       while i<@fil
	    j=0
	    while j<@col
	      cadena+="#{valor[i][j]} "
	      j=j+1
	    end
	    
	  cadena+="\n "
	  i=i+1
	end
     cadena
    end 
     
     
######################## METODO SUMA DE MATRICES######################
    
    def +(other) 
      
      aux=Matriz.new(@col,@fil)
      i=0
     
	while i<@fil
	   j=0
	  while j<@col
	    aux[i][j]= valor[i][j] + other.get(i,j)
	    j=j+1
	  end
	i=i+1
	end
      aux
    end
    
############ METODO MULTIPLICAR UNA MATRIZ ###########
    
    
    def *(other)
      
      aux=Matriz.new(@col,@fil)
      i=0
      while i < @fil
	j = 0
	while j < other.col
	  k = 0
	  while k < @col
	    aux[i][j] = (aux[i][j] + valor[i][k])*other.get(k,j)
	    k=k+1
	  end
	  j=j+1
	end
	i=i+1
      end
      aux
    end
    
    
############ METODO RESTA DE MATRICES ##################
    
    
    
    def -(other)
       aux=Matriz.new(@col,@fil)
      i=0
     
	while i<@fil
	   j=0
	  while j<@col
	    aux[i][j]= valor[i][j] - other.get(i,j)
	    j=j+1
	  end
	
	  i=i+1
	end
      aux
    end        
  
  ############### METODO == ###############################
      
    def ==(other)
      i=0
	while i<@fil
	  j=0
	  while j<@col
	    if 
	      valor[i][j] == other[i][j]
	      j=j+1
	    else
	      return false
	    end
	  end
	end
    end
    
 ##################### METODO GET #########################
    
      def get(i,j)
	@valor[i][j]      
      end
      
############################## METODO MAXIMO DE UNA DENSA ##############################    
    def max
      max = @valor[0][0]
      i=0
	while (i<@fil)
	  j=0
	  while (j<@col)
	      if (@valor[i][j] > max)
		  max= @valor[i][j]
	      end
	      j=j+1
	  end
	i=i+1
      end
     puts max
    end
       
############################## METODO MINIMO DE UNA DENSA ################################      
   def min
       min = @valor[0][0]
       i = 0
        while (i < @fil)
            j = 0
            while (j < @col)
               if (@valor[i][j] < min)
                   min = @valor[i][j]
                end
                j=j+1
            end
           i=i+1
	end
      puts min
    end
     
end
end
