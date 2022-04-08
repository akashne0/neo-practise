
  def total(subtotal:, tax:, discount:)
    subtotal + tax - discount
  end
  
  puts total(discount: 5, subtotal: 100, tax: 10)