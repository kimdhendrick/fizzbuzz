class FizzBuzz
  def self.go
    results = []
    (1..100).each do |number|
      output = ''
      if _whizzy?(number)
        output = 'whizz'
      else
        output << 'fizz' if _fizzy?(number)
        output << 'buzz' if _buzzy?(number)
        output = number if _boring?(number)
      end
      results << output
    end
    results
  end

  private

  def self._boring?(number)
    !_fizzy?(number) && !_buzzy?(number) && !_whizzy?(number)
  end

  def self._fizzy?(number)
    number % 3 == 0
  end

  def self._buzzy?(number)
    number % 5 == 0
  end

  def self._whizzy?(number)
    number % 7 == 0
  end

end
