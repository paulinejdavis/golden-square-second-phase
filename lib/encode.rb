def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    ciphertext_chars = plaintext.chars.map do |char|
      cipher.find_index(char)== nil ? char.upcase : (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher.include?(char.downcase) ? cipher[65 - char.ord].downcase : char.downcase
    end
    return plaintext_chars.join
  end
  