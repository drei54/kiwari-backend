# define class Response
class Response
  def initialize(code, msg)
    # Instance variables
    @code = code
    @msg = msg
  end

  def initialize(code, msg, data)
    # Instance variables
    @code = code
    @msg = msg
    @data = data
  end

  def bark
    puts 'Ruff! Ruff!'
  end

  def display
    puts "I am of #{@breed} breed and my name is #{@name}"
  end
end