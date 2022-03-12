class Segitiga
  attr_accessor(:alas, :tinggi)

  def initialize(alas, tinggi)
    self.alas = alas.to_f()
    self.tinggi = tinggi.to_f()
  end

  def cetakLuas()
    return self.luas()
  end

  private 
    def luas()
      return (self.alas * self.tinggi) / 2
    end
end