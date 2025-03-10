class ADF
    def initialize(cadeia)
        @cadeia = cadeia
        @indice = 0
        @max = cadeia.size 
    end
  
    # pega apenas um caracter
    def proximo
      if @indice == @max
          ""
      else
          @cadeia[@indice]
      end
    end
    
    def iniciar
  
      traducao = ""
      estado = "q0"
      i = 0
    
      puts "Máquina iniciou no estado: " + estado
    
      loop do
        case [proximo, estado]
            
      #estado q0
        in [".", "q0"]
          estado = "q1"
          i += 1  
        in ["-", "q0"]
          estado = "q27"
          i += 1
        in ["/", "q0"]
          traducao += " "
          i += 1
        in [" ", "q0"]
          i += 1
  
      #estado q1
        in [" ", "q1"]
          estado = "q0"   
          traducao += "e"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
              
        in [".", "q1"]
          estado = "q2"
          i += 1
        in ["-", "q1"]
          estado = "q25"
          i += 1
  
      # estado q2
        in [" ", "q2"]
          estado = "q0"   
          traducao += "i"
          i += 1    
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q2"]
          estado = "q3"
          i += 1
        in ["-", "q2"]
          estado = "q11"
          i += 1
  
      # estado q3
        in [" ", "q3"]
          estado = "q0"
          traducao += "s"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q3"]
          estado = "q4"
          i += 1
        in ["-", "q3"]
          estado = "q10"
          i += 1
  
      # estado q4
        in [" ", "q4"]
          estado = "q0"
          traducao += "h"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q4"]
          estado = "q6"
          i += 1
        in ["-", "q4"]
          estado = "q5"
          i += 1
  
      # estado q5
        in [" ", "q5"]
          estado = "q0"
          traducao += "4"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q5"]
          estado = "q7"
          i += 1
        in ["-", "q5"]
          estado = "q8"
          i += 1
  
      # estado q6
        in [" ", "q6"]
          estado = "q0"
          traducao += "5"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q6"]   
          estado = "q7" 
          i += 1
        in ["-", "q6"]
          estado = "q8"
          i += 1
  
      # estado q9
        in [" ", "q9"]
          estado = "q0"
          traducao += "3"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q9"]
          estado = "q7"
          i += 1
        in ["-", "q9"]
          estado = "q8"
          i += 1
  
      # estado q10
        in [" ", "q10"]
          estado = "q0"
          traducao += "v"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q10"]
          estado = "q7"
          i += 1
        in ["-", "q10"]
          estado = "q9"
          i += 1
  
      # estado q11
        in [" ", "q11"]
          estado = "q0"
          traducao += "u"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q11"]
          estado = "q12"
          i += 1
        in ["-", "q11"]
          estado = "q58"
          i += 1
  
      # estado q12
        in [" ", "q12"]
          estado = "q0"
          traducao += "f"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q12"]
          estado = "q15"
          i += 1
        in ["-", "q12"]
          estado = "q16"
          i += 1
          
      # estado q13
        in [" ", "q13"]
          estado = "q0"
          traducao += "2"
          i += 1  
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q13"]
          estado = "q15"
          i += 1
        in ["-", "q13"]
          estado = "q16"
          i += 1
            
      # estado q14
        in [".", "q14"]
          estado = "q18"
          i += 1   
        in ["-", "q14"]
          estado = "q17"
          i += 1
            
      # estado q17
        in [" ", "q17"]
          estado = "q0"
          traducao += "."
          i += 1 
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q17"]
          estado = "q15"
          i += 1
        in ["-", "q17"]
          estado = "q16"
          i += 1
  
      # estado q18
        in [" ", "q18"]
          estado = "q0"
          traducao += "?"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q18"]
          estado = "q15"
          i += 1
        in ["-", "q18"]
          estado = "q16"
          i += 1
  
          # estado q19
        in [" ", "q19"]
          estado = "q0"
          traducao += "p"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q19"]
          estado = "q20"
          i += 1
        in ["-", "q19"]
          estado = "q21"
  
      # estado q22
        in [" ", "q22"]
          estado = "q0"
          traducao += "1"
          i += 1 
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q22"]
          estado = "q20"
          i += 1
        in ["-", "q22"]
          estado = "q21"
          i += 1    
  
      # estado q23
        in [" ", "q23"]
          estado = "q0"
          traducao += "j"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q23"]
          estado = "q20"
          i += 1
        in ["-", "q23"]
          estado = "q22"
          i += 1
  
      # estado q24
        in [" ", "q24"]
          estado = "q0"
          traducao += "w"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q24"]
          estado = "q19"
          i += 1
        in ["-", "q24"]
          estado = "q23"
          i += 1
  
      # estado q25
        in [" ", "q25"]
          estado = "q0"
          traducao += "l"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q25"]
          estado = "q26"
          i += 1
        in ["-", "q25"]
          estado = "q24"
          i += 1
  
      # estado q26
        in [" ", "q26"]
          estado = "q0"
          traducao += "r"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q26"]
          estado = "q25"
          i += 1
        in ["-", "q26"]
          estado = "q21"
          i += 1
  
      # estado q27
        in [" ", "q27"]
          estado = "q0"
          traducao += "t"  
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q27"]
          estado = "q45"
          i += 1
        in ["-", "q27"]
          estado = "q28"
          i += 1
  
      # estado q28
        in [" ", "q28"]
          estado = "q0"
          traducao += "m"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q28"]
          estado = "q35"
          i += 1
        in ["-", "q28"]
          estado = "q29"
          i += 1
  
      # estado q29
        in [" ", "q29"]
          estado = "q0"
          traducao += "o"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q29"]
          estado = "q30"
          i += 1
        in ["-", "q29"]
          estado = "q31"
          i += 1
  
      # estado q30
        in [".", "q30"]
          estado = "q32"
          i += 1
        in ["-", "q30"]
          estado = "q30"
          i += 1
  
      # estado q31
        in [".", "q31"]
          estado = "q33"
          i += 1
        in ["-", "q31"]
          estado = "q34"
          i += 1
            
      # estado q32
        in [" ", "q32"]
          estado = "q0"
          traducao += "8"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q32"]
          estado = "q41"
          i += 1
        in ["-", "q32"]
          estado = "q42"
          i += 1
            
      # estado q33
        in [" ", "q33"]
          estado = "q0"
          traducao += "9"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q33"]
          estado = "q41"
          i += 1
        in ["-", "q33"]
          estado = "q42"
          i += 1
  
      # estado q34
        in [" ", "q34"]
          estado = "q0"
          traducao += "0"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q34"]
          estado = "q41"
          i += 1
        in ["-", "q34"]
          estado = "q42"
          i += 1
  
      # estado q35
        in [" ", "q35"]
          estado = "q0" 
          traducao += "g"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q35"]
          estado = "q36"
          i += 1
        in ["-", "q35"]
          estado = "q40"
          i += 1
  
      # estado q36
        in [" ", "q36"]
          estado = "q0"
          traducao += "z"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q36"]
          estado = "q37"
          i += 1
        in ["-", "q36"]
          estado = "q38"
          i += 1
  
      # estado q37
        in [" ", "q37"]
          estado = "q0"
          traducao += "7"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q37"]
          estado = "q43"
          i += 1
        in ["-", "q37"]
          estado = "q44"
          i += 1
  
      # estado q38
        in ["-", "q38"]
          estado = "q39"
          i += 1
  
      # estado q39
        in [" ", "q39"]
          estado = "q0"
          traducao += ","
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q39"]
          estado = "q43"
          i += 1
        in ["-", "q39"]
          estado = "q44"
          i += 1
  
      # estado q40
        in [" ", "q40"]
          estado = "q0"
          traducao += "q"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q40"]
          estado = "q43"
          i += 1
        in ["-", "q40"]
          estado = "q44"
          i += 1
  
      # estado q45
        in [" ", "q45"]
          estado = "q0"
          traducao += "n"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q45"]
          estado = "q46"
          i += 1
        in ["-", "q45"]
          estado = "q47"
          i += 1
  
      # estado q46
        in [" ", "q46"]
          estado = "q0"
          traducao += "d"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q46"]
          estado = "q49"
          i += 1
        in ["-", "q46"]
          estado = "q51"
          i += 1
  
      # estado q47
        in [" ", "q47"]
          estado = "q0"
          traducao += "k"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q47"]
          estado = "q52"
          i += 1
        in ["-", "q47"]
          estado = "q48"
          i += 1
  
      # estado q48
        in [" ", "q48"]
          estado = "q0"
          traducao += "z"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q48"]
          estado = "q56"
          i += 1
        in ["-", "q48"]
          estado = "q57"
          i += 1
  
      # estado q49
        in [" ", "q49"]
          estado = "q0"
          traducao += "b"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q49"]
          estado = "q50"
          i += 1
  
      # estado q50
        in [" ", "q50"]
          estado = "q0"
          traducao += "6"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q50"]
          estado = "q54"
          i += 1
        in ["-", "q50"]
          estado = "q53"
          i += 1
  
      # estado q51
        in [" ", "q51"]
          estado = "q0"
          traducao += "x"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q51"]
          estado = "q57"
          i += 1
        in ["-", "q51"]
          estado = "q56"
          i += 1
  
      # estado q52
        in [" ", "q52"]
          estado = "q0"
          traducao += "c"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q52"]
          estado = "q56"
          i += 1
        in ["-", "q52"]
          estado = "q57"
          i += 1
  
      # estado q53
        in [" ", "q53"]
          estado = "q0"
          traducao += "-"
          i += 1
          puts "Aceito 😀"
          break if i == @cadeia.length
        in [".", "q53"]
          estado = "q54"
          i += 1
        in ["-", "q53"]
          estado = "q55"
          i += 1
  
      # estado q58
        in [".", "q58"]
          estado = "q13"
          i += 1
        in ["-", "q58"]
          estado = "q"
          i += 1
        
        else
          puts "Erro"
          break
        end
    
        @indice += 1
        puts "Estado: " + estado
      end
      puts "\nCódigo morse: " + @cadeia
      puts "Tradução: " + traducao
    end
  end
  
  adf = ADF.new("-.-. --- -.. .. --. --- / -- --- .-. ... . / -.. . / . -..- . -- .--. .-.. --- ")
  adf.iniciar