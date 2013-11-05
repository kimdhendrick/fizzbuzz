class FizzBuzz
  class << self

    STRATEGIES = [
      {15 => 'fizzbuzz'},
      {7 => 'whizz'},
      {3 => 'fizz'},
      {5 => 'buzz'}
    ]

    def go
      (1..100).map do |number|
        match = STRATEGIES.find { |strategy| number % strategy.keys.first == 0 }
        match ? match.values.first : number
      end
    end
  end
end
