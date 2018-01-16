# Recurse test
class RecurseCereal
  attr_reader :output

  def initialize
    @output = []

    (1..100).each do |n|
      crunched = crunch(n)
      output << crunched
      p "[#{n}] => #{crunched}"
    end
  end

  private

  def crunch(n)
    o = (n % 3).zero? || (n % 5).zero? ? '' : n.to_s
    o += 'Crackle' if (n % 3).zero?
    o += 'Pop'     if (n % 5).zero?
    o
  end
end

RecurseCereal.new