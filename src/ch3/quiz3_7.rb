s = gets.strip.split('')

0...((1 << s.size) - 1).each do |b|
  s.reduce('').with_index do |res, s_i, idx|
    if (b & 1 << idx).positive?
      res += s_i + '+'
    else
      res += s_i
  end
