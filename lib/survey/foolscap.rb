
# Special handler code for Foolscap's particular variety of programming survey

# Store the block so we can re-use the questions
def stock_questions(&block)
  @stock_questions = block
end

def panel(title, opts = {})
  desc = opts[:desc] || ''
  label title, :help_text => desc
  @stock_questions.call
end
