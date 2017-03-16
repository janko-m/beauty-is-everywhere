class ApplicationViewModel
	def ross_quote
    ross_quoter.quote
  end

  private

  def ross_quoter
    @ross_quoter ||= RossQuoter.new
  end
end