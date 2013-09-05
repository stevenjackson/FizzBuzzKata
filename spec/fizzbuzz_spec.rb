require 'rspec'
require_relative '../fizz_buzz'

describe "FizzBuzz" do
  let(:fizzbuzz) { FizzBuzz.new }
  
  it "handles normal number" do
    fizzbuzz.result(1).should == 1
    fizzbuzz.result(2).should == 2
  end
  
  it "handles fizz" do
    fizzbuzz.result(3).should == 'Fizz'
  end
  
  it "handles buzz" do
    fizzbuzz.result(5).should == 'Buzz'
  end
  
  it "handles fizz buzz" do
    fizzbuzz.result(15).should == 'FizzBuzz'
  end
  
  it "is Fizz if it has a 3 in it" do
    fizzbuzz.result(13).should == 'Fizz'
  end
  
  
  it "is Buzz if it has a 5 in it" do
    fizzbuzz.result(52).should == 'Buzz'
  end
  
  it "is FizzBuzz because it's divisible by 3 and it has a 5 in it" do
    fizzbuzz.result(51).should == 'FizzBuzz'
  end
  
  it "handles fizz up to 100" do
    (0..100).step(3) do |number|
      fizzbuzz.result(number).should include 'Fizz'
    end
  end
  
  it "handles buzz up to 100" do
      (0..100).step(5) do |number|
        fizzbuzz.result(number).should include 'Buzz'
      end
  end
    
  it "handles fizzbuzz up to 100" do
  
    (0..100).step(15) do |number|
      fizzbuzz.result(number).should include 'FizzBuzz'
    end
  
  end
  
  it "handles all the threes up to 100" do  
    all_the_threes = (0..100).select do |number|
      number.to_s.include? '3'
    end
    
    all_the_threes.each do |number|
      fizzbuzz.result(number).should include 'Fizz'
    end
  end
  
  it "handles all the fives up to 100" do  
    all_the_fives = (0..100).select do |number|
      number.to_s.include? '5'
    end
    
    all_the_fives.each do |number|
      fizzbuzz.result(number).should include 'Buzz'
    end
    
  end
  
  it "prints stuff for fizzbuzz" do 
    puts fizzbuzz.fizz_buzz
  end
end