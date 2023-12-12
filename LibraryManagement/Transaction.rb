class Transaction
@@totalCost = 0
  def costCalculator
    @@totalCost += 50;
  end

  def totalCost
    return @@totalCost
  end

end
