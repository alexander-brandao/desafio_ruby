class Integer
 
    private
   
    #mapeando os algarismos romanos e suas exceções, criando um hash 
    #mapping the Roman numerals and their exceptions for hash map 
    
    def roman_mapping
      {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
      }
    end

    #metodo interativo  
    def to_roman
        
        #result = string vazia
        result = ""
        #instanciando um objeto da classe Inteiro
        number = self
        #dividindo o inteiro de entrada pelas chaves da hash
        roman_mapping.keys.each do |divisor|
          quotient, modulus = number.divmod(divisor)
          #result recebe o caractere associado ao resultado da divisão
          result << roman_mapping[divisor] * quotient
          #number atualiza para o resto da divisão   
          number = modulus
        end
    end

    
      


      
      
end