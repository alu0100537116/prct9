
include Comparable
class Fraccion
  
  
  def initialize (numerador, denominador)
    @num,@den = numerador,denominador
  end
  
  def to_s
      "(#{@num}/#{@den})"
  end
  
  def reduccion
    com_div = gcd(@num,@den)
    @num=@num/com_div
    @den=@den/com_div
    Fraccion.new(@num,@den)
  end
 
  def gcd(u, v)
    u, v = u.abs, v.abs
    while v != 0
      u, v = v, u % v
    end
    u
  end

  def num  # Se debe invocar al metodo num() para obtener el numerador
    @num
  end
  
  def denom # Se debe invocar al metodo den() para obtener el denominador
    @den
  end
  
  def denomi(var)
    @den=var
  end
  
  def nume(var)
    @num=var
  end
 

  def mostrar_fraccion #Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador
    puts "(#{@num}/#{@den})"
  end

  def flotante #Se debe mostar por la consola la fraccion en formato flotante
    aux=self.num/self.denom
    
  end
  
  

  
  def ==(val)   
    self.reduccion
    #puts self.to_s
    val.reduccion
    #puts val.to_s
    if (self.num()==val.num()) & (self.denom()==val.denom())
      Fraccion.new(self.num(),self.denom())
     return true
    else
     return false
    end
  end
   
  def abs                     # Se debe calcular el valor absoluto de una fraccion con el metodo abs
    aux1=((self.denom)*(self.denom))
    aux2=((self.num)*(self.num))
    self.reduccion
    Fraccion.new(@num,@den)
  end
  
  def reciprocal
    aux=self.num()
    self.nume(self.denom())
    self.denomi(aux)
    self.to_s
    end
      
   def opuesto                        #  Se debe calcular el opuesto de una fraccion con -
    self.nume(self.num*(-1))    
    #Comprobamos si denominador y numerador son negativos (-/-)=(+/+).
    if((self.num()<0)&(self.denom()<0))
      self.nume(self.num*(-1))
      self.denomi(self.denom*(-1))
    end
    self.to_s
  end
  
    def opuesto2
      self.nume(self.num*(-1))    
    #Comprobamos si denominador y numerador son negativos (-/-)=(+/+).
    if((self.num()<0)&(self.denom()<0))
      self.nume(self.num*(-1))
      self.denomi(self.denom*(-1))
    end
    Fraccion.new(self.denom,self.num)
  end
  
  def +(val)   #Se debe sumar dos fracciones con + y dar el resultado de forma reducida
      if self.denom == val.denom
      aux=self.num + val.num
      p3=Fraccion.new(aux, self.denom)
      else
	  numaux=(self.num*val.denom)+(val.num*self.denom)
	  denaux=(self.denom*val.denom)
	  p3=Fraccion.new(numaux, denaux)
    end 
    p3.reduccion
    p3.to_s
  end
  
  def -(val)   #  Se debe restar dos fracciones con - y dar el resultado de forma reducida
    if val.denom == self.denom
      aux=self.num-val.num
	  p3=Fraccion.new(aux, self.denom)
      else
	  numaux=(self.num*val.denom)-(val.num*self.denom)
	  denaux=self.denom*val.denom
	  p3=Fraccion.new(numaux, denaux)
    end 
    p3.reduccion
    p3.to_s
  end
  
   def *(val)    #Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida
     aux1 = self.num*val.num
     aux2 = self.denom*val.denom
     f1=Fraccion.new(aux1, aux2)
     f1.reduccion
     
   end 
   
   def /(val)		#Se debe dividir dos fracciones con / y dar el resultado de forma reducida
      aux1 = self.num*val.denom
      aux2 = self.denom*val.num
      f1=Fraccion.new(aux1,aux2)
      f1.reduccion
      f1.to_s
   end
 
   def &(val)    #Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida
     self.reduccion
     val.reduccion
     temp=self.flotante
     temp1=val.flotante
     resto=temp1%temp
     f3=Fraccion.new(resto,1)    
   end 

   def <=>(val)
      (self.flotante <=> val.flotante)
   end
   
end

  
  
  