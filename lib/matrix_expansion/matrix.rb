module MatrixExpansion
class Matriz
  
  include Comparable
  include Enumerable
  
  attr_accessor :fil, :col, :valor
  
  ######################### METODO INITIALIZE MATRIZ ##########################
  
    def initialize(m,n)
      @fil,@col = m, n
      @valor=Array.new(@fil,0)
      i=0      
      while i < @fil
	 @valor[i]=Array.new(@col,0)
	 i=i+1
      end
   end

   
    #################### METODO NUMERO DE VALORES NULOS ###########################
   
    def tipo
      @cnt=0
      k=0
      while k<@fil
	  r=0
	    while r<@col 
	      if (@valor[k][r]==0)
		  @cnt=@cnt+1
	      end
	      r=r+1
	    end
	  k=k+1
      end
      if (((@fil*@col)*0.6) < @cnt)  # SI el 60% de la matriz es nula
	  @bool=true
	  self.initialize_dispersa(@fil,@col,@valor)
      else
	  @bool=false
      end
    end
    

    ########################## METODO [] ##################################
    
    
    def [](i)
      @valor[i]
    end
        
    ########################### METODO []= #################################
    def []=(i,other)
      @valor[i] = other
    end
    
    
############# METODO REPRESENTAR UNA CADENA ##############  
    
    def to_s
	    i=0
	    cadena= ""
	     while i<@fil
		  j=0
		  while j<@col
		   cadena+="#{@valor[i][j]} "
		      j=j+1
		  end
		  cadena+="\n"
		i=i+1
	     end
      puts cadena
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
	    aux[i][j] = (aux[i][j] + @valor[i][k])*other[i][k]
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
	    aux[i][j]= @valor[i][j] - other[i][j]
	    j=j+1
	  end
	
	  i=i+1
	end
      aux
        
     @valor=Array.new(@fil,0.0)
  end     
 ########################## METODO == #########################   
  
  
   def ==(other)
      i=0
      cnt=0
	while i<@fil
	  j=0
	  while j<@col
	    if (@valor[i][j] != other[i][j])
	      cnt=cnt+1
	    end
	    j=j+1
	  end
	  i=i+1
	end
	
      if(cnt>0)
	  return false
      else
	  return true
      end
   end
   
########################## METODO <=>  ###########################
   
#    def <=>(other)
#      i=0
#      while i<@fil
#        j=0
#        while j<@fil
# 	  self.get(i,j)<=>other.get(i,j) 
#        end
#        j=j+1
#      end
#      i=i+1
#    end
#    
     
     
   

end
end
