
module InterestLevel
  NO = 1
  MEH = 2
  YES = 3

  def interest_level
    return '' unless self[:interest_level]
    const_index = self[:interest_level] - 1
    InterestLevel.constants[const_index].to_s.downcase.camelcase
  end
end
