class FizzBuzz
  def result(number)
    if fizz_buzz?(number)
      number = 'FizzBuzz'
    elsif fizz?(number)
      number = 'Fizz'
    elsif buzz?(number)
      number = 'Buzz'
    end
    number  
  end
  
  def fizz_buzz
    (0..100).map do |number|
      result(number) 
    end
  end
  
  private
  def fizz_buzz?(number)
    fizz?(number) && buzz?(number)
  end
  
  def fizz?(number)
    number % 3 == 0 || number.to_s.include?('3') 
  end
  
  def buzz?(number)
    number % 5 == 0 || number.to_s.include?('5')
  end
end