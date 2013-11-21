require '/home/alu4233/datos/homes.rala/LPP/prct9/lib/my_gem/gem/matrices.rb'

module My
 class MatrizDispersa<Matriz
   
 attr_accessor :dfil, :dcol, :dvalor
    def initialize(n,m)
	super
	@dcol=Array.new()
	@dfil=Array.new()
	@dvalor=Array.new()
	@elementos=0
      end
###################################### CONVERSION A DISPERSA #################################     
      
    def convertir_dispersa  
      r=0
	h=0
	while h<@fil
	  g=0
	    while g<@col
		if (@valor[h][g]!=0)
		    @elementos+=1
		    @dcol[r]=h
		    @dfil[r]=g
		    @dvalor[r]=@valor[h][g]

		    r=r+1
		end
		g=g+1
	    end
	    h=h+1
	 end
    end
  ##################################### METODO TO_S ##############################     
      
      def to_s
	k=0
	aux=0
	  cadena= ""
	    while k<@fil
	      j=0
		  while j<@col
		      if k==@dcol[aux] && j==@dfil[aux]
			    cadena+="#{@dvalor[aux]} "	 
			    if ((aux+1)<@elementos)
			      aux=aux+1
			    end
		      else
			    cadena+="0 "
		      end
		   j=j+1		      
		  end
		  cadena+="\n"
		k=k+1
	    end
	puts cadena
      end  

      
      
#################################### METODO GET #######################################

    def get(z,x)
      puts " METODO GET"
      k=0
	aux=0
	    while k<@fil
	      j=0
		  while j<@col
		      if x==@dcol[aux] && z==@dfil[aux]
			return @dvalor[aux]		
		      end
		   j=j+1		      
		  end
		k=k+1
	    end 
      return 0
     
    end
      

       
#################################### METODO [] ########################################
      
    def [](i)
      @valor[i]
    end
    
    ######################## METODO []= ###########################################
    def []=(i,other)
      @valor[i]= other
    end
      
  end
end

@M1=My::MatrizDispersa.new(2,2)
@M1[0]=[1,0]
@M1[1]=[0,0]
@M1.convertir_dispersa
@M1.get(0,0)
@M1.get(0,1)
@M1.to_s