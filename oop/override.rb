# ! Dalam pemrograman berorientasi object, kita mengenal istilah yang bernama override atau overriding.
# ! Override atau Overriding adalah teknik pemrograman berorientasi object dimana kita dapat mendefinisikan ulang method yang sebelumnya sudah didefinisikan didalam super class atau parent class.

# contoh kode program
class Mobil
  def make_sound
    'ngeng'
  end
end

class MobilSport < Mobil
  # Overriding / menulis ulang method make_sound yang sebelumnya sudah didefinisikan didalam super class Mobil
  def make_sound
    'stutututu'
  end
end

if $PROGRAM_NAME == __FILE__
  obj = MobilSport.new
  puts obj.make_sound
end
