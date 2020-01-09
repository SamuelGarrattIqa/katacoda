When('I add {string} + {string}') do |num1, num2|
  @result = num1 + num2
end

When('I add {int} + {int}') do |num1, num2|
  @result = num1 + num2
end

Then('the result should be {word}') do |expected_result|
  expect(@result.to_s).to eq expected_result
end
