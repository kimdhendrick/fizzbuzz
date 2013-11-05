class FizzBuzz
  class << self

    STRATEGIES = [
      {evaluation: ->(number) { number % 15 == 0 }, pass_value: 'fizzbuzz'},
      {evaluation: ->(number) { number % 3 == 0 }, pass_value: 'fizz'},
      {evaluation: ->(number) { number.to_s.split('').include?('3') }, pass_value: 'fizz'},
      {evaluation: ->(number) { number % 5 == 0 }, pass_value: 'buzz'},
      {evaluation: ->(number) { number % 1 == 0 }, pass_value: nil}
    ]

    def go(strategies = STRATEGIES)
      (1..100).map do |number|
        strategy_match = strategies.find { |strategy| strategy[:evaluation].call(number) }
        strategy_match[:pass_value] || number
      end
    end
  end
end

class FizzBuzzWhizz < FizzBuzz
  class << self

    def go
      super([{evaluation: ->(number) { number % 7 == 0 }, pass_value: 'whizz'}].concat(STRATEGIES))
    end
  end
end