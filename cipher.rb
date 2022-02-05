def caesar_cipher(string, shift)
  puts "your string: #{string}, your shift: #{shift}"
  s_array = string.chars
  s_array.map! do |c|
    if c.ord.between?(65, 90) || c.ord.between?(97, 122)
      new_ord = c.ord + shift
      c = if new_ord.between?(65, 90) || new_ord.between?(97, 122)
            new_ord.chr
          else
            c.ord.between?(65, 90) ? (64 + (new_ord - 90)).chr : (96 + (new_ord - 122)).chr
          end
    else
      c
    end
  end
  puts "cipher: #{s_array.join}"
end
caesar_cipher('What a string!', 5)
