class FizzBuzz
  class << self

    STRATEGIES = {
      15 => 'fizzbuzz',
      3 => 'fizz',
      5 => 'buzz',
      1 => nil
    }

    def go(strategies = STRATEGIES)
      (1..100).map do |number|
        strategies[strategies.keys.find { |key| number % key == 0 }] || number
      end
    end
  end
end

class FizzBuzzWhizz < FizzBuzz
  class << self

    def go
      super({7 => 'whizz'}.merge(STRATEGIES))
    end
  end
end
