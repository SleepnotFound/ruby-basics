require 'pry-byebug'

#binding.pry

def caesar_cipher(string, shift)
  s_array = string.chars
  s_array.map! do |c|
    if c.ord.between?(65, 90) || c.ord.between?(97, 122)
      new_ord = c.ord + shift
      c = if new_ord.between?(65, 90) || new_ord.between?(97, 122)
            new_ord.chr
          else
            until new_ord.between?(65, 90) || new_ord.between?(97, 122)
              new_ord = c.ord.between?(65, 90) ? 64 + (new_ord - 90) : 96 + (new_ord - 122)
            end
            new_ord.chr
          end
    else
      c
    end
  end
  s_array.join
end
