class Aritmatika
  attr_accessor(:a, :b)

  def initialize(a, b)
    self.a = a.to_f()
    self.b = b.to_f()
  end

  def tambah()
    return self.a + self.b
  end

  def kurang()
    return self.a - self.b
  end

  def kali()
    return self.a * self.b
  end

  def bagi()
    return self.a / self.b
  end

  def pangkat()
    return self.a ** self.b
  end
end