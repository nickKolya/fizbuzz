require_relative './result_logger.rb'

def fizbuzz(number)
  res = nil

  res = 'FizBuzz' if number % 3 == 0 && number % 5 == 0
  res ||= 'Fiz' if number % 3 == 0
  res ||= 'Buzz' if number % 5 == 0

  ResultLogger.call(res)

  res
end
