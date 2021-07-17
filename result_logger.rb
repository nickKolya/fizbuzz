class ResultLogger
  def self.call(result)
    p "Here is your result: #{result}"

    OpenStruct.new(
      success: true
    )
  end
end
