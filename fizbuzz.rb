def fizbuzz(number)
  return 'FizBuzz' if number % 3 == 0 && number % 5 == 0
  return 'Fiz' if number % 3 == 0
  return 'Buzz' if number % 5 == 0
end
