require_relative '../lib/fizz_buzz'

describe FizzBuzz do
  context '.go' do
    it 'should return 7 for 7' do
      FizzBuzz.go[6].should == 7
    end
  end
end

describe FizzBuzzWhizz do
  context '.go' do
    it 'should output 1' do
      FizzBuzzWhizz.go[0].should == 1
    end

    it 'should output 2' do
      FizzBuzzWhizz.go[1].should == 2
    end

    it 'should output fizz for 3' do
      FizzBuzzWhizz.go[2].should == 'fizz'
    end

    it 'should output fizzbuzz for multiples of 15' do
      results = FizzBuzzWhizz.go

      results[14].should == 'fizzbuzz'
      results[29].should == 'fizzbuzz'
      results[44].should == 'fizzbuzz'
      results[59].should == 'fizzbuzz'
    end

    it 'should output whizz for multiples of 7' do
      results = FizzBuzzWhizz.go

      results[6].should == 'whizz'
      results[13].should == 'whizz'
      results[20].should == 'whizz'
      results[27].should == 'whizz'
      results[34].should == 'whizz'
      results[41].should == 'whizz'
      results[48].should == 'whizz'
      results[55].should == 'whizz'
      results[62].should == 'whizz'
      results[69].should == 'whizz'
      results[76].should == 'whizz'
      results[83].should == 'whizz'
      results[90].should == 'whizz'
      results[97].should == 'whizz'
    end

    it 'should output the right values' do
      FizzBuzzWhizz.go[0..69].should ==
        [
          1, 2, 'fizz', 4, 'buzz', 'fizz', 'whizz', 8, 'fizz', 'buzz',
          11, 'fizz', 'fizz', 'whizz', 'fizzbuzz', 16, 17, 'fizz', 19, 'buzz',
          'whizz', 22, 'fizz', 'fizz', 'buzz', 26, 'fizz', 'whizz', 29, 'fizzbuzz',
          'fizz', 'fizz', 'fizz', 'fizz', 'whizz', 'fizz', 'fizz', 'fizz', 'fizz', 'buzz',
          41, 'whizz', 'fizz', 44, 'fizzbuzz', 46, 47, 'fizz', 'whizz', 'buzz',
          'fizz', 52, 'fizz', 'fizz', 'buzz', 'whizz', 'fizz', 58, 59, 'fizzbuzz',
          61, 62, 'whizz', 64, 'buzz', 'fizz', 67, 68, 'fizz', 'whizz'
        ]
    end

    it 'should output 100 values' do
      FizzBuzzWhizz.go.count.should == 100
    end
  end
end