class Integer
  
  
  def to_roman
    #criando tabela hash para mapear as representações romanas e suas exceções
    roman_hash = {
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
    #instanciando um numero inteiro
    num = self

    #metodo reduce acumula as operacoes seguintes numa string vazia
    roman_hash.reduce("") do |res, (arab, roman)|
      #o numero é dividido por todas as hash's até encontrar um divisor comum 
      parte_inteira, num = num.divmod(arab)
      #as keys dos divisores comuns sao acumulados no resultado como hash
      res << roman * parte_inteira
    end
  end
end

#testes
puts 3.to_roman #ok
puts 1645.to_roman #ok
puts 3999.to_roman #ok

#observacoes
#o algoritimo funciona perfeitamente dos numeros 1 até 3999
#a partir do 4000 existem variacoes nos simbolos que vão alem dos limites do mapeamento inicial, mas acredito que a ideia do desafio foi alcancada 
puts 5000.to_roman #erro devido as limitaçoes da tabela  
