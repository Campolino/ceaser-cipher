class Encrypt
  def ceasar_cipher(string, number, new_char = '')
    string.chars do |char|
      if char[/^[a-zA-Z_]+/]
        base = char.ord < 91 ? 65 : 97
  
        code_char = (((char.ord - base) + number) % 26) + base
        new_char += code_char.chr
      else
        new_char += char
      end
    end
    p new_char
  end
end

encrypt = Encrypt.new
encrypt.ceasar_cipher("What a string!", 5)